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
               
			   <%
			   String email=(String)session.getAttribute("emailid");
			   %>
			   
			<table width="751" height="419"><tr><td width="304">
	
<p> 
              <%
String a1=(String)session.getAttribute("b");
%><div id="main">
              <img src="user2.jsp" width="153" height="169"> <br>
            </p>
            <p>&nbsp; </p>
            <p><font color="#00CC66"><b>Welcome:</b></font>&nbsp;<font  color="#FFCC00" face="Times New Roman, Times, serif" size="3.5"><i><%=a1%></i></font></h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp; </p>
            <form name="s" action="search2.jsp">
 <table><tr><td><p>&nbsp;</p>
                    <p><font color="#33CCFF" face="Times New Roman, Times, serif" size="4"><i><b>Search</b></i></font> 
                      <input type="text" name="v" size="14" placeholder="Search friends">
                    </p></td></tr></table></form>
            <p><br>
              &nbsp;&nbsp;<a href="friends.jsp"><font color="#00CC66"><b>Friends</b></font></a></p>
            <p><br>
              &nbsp;&nbsp;<a href="frd2.jsp"><font color="#00CC66"><b>Friends 
              Request</b></font></a></p>
            <p> <br>
              <font color="#CC3366">&nbsp;&nbsp;<b>FAVOURITES</b></font></p>
            <p><br>
              &nbsp;&nbsp;<a href="ga.jsp"><font color="#009933"><b>My Gallery</b></font></a></p>
            <p><br>
              &nbsp;&nbsp;<a href="user1.jsp"><font color="#009933"><b>Add Messages</b></font></a></p>
            <p><br>
              &nbsp;&nbsp;<a href="add.jsp"><font color="#009933"><b>Add Photos</b></font></a></p>
            <p><br>
              &nbsp;&nbsp;<a href="logout.jsp"><font color="#FF3300" face="Times New Roman, Times, serif"><strong> 
              LOGOUT</strong></font></a> </p></td>
	
	      <td width="398"> <table width="493" height="311">
              <%
String a=(String)session.getAttribute("a");
String b=request.getParameter("v");
String w=(String)session.getAttribute("w");
try {

Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");

PreparedStatement stmt = con.prepareStatement("select name,id from login where name like '%"+b+"%' AND log='"+a+"'");

ResultSet rs = stmt.executeQuery();

while(rs.next()) {
String name=rs.getString(1);
String name1=rs.getString(2);
session.setAttribute("id",name1);
%>
              <tr> 
                <td width="170"><font color="#666666" size="3"><b><font color="#66CC00">Profile 
                  Photo:</font></b></font></td>
                 
                <td width="216"><img src="search.jsp?<%=name%>" height="125" width="125" /></td>
              </tr>
              <tr> 
                <td><font color="#666666" size="3"><font color="#00CC66"><b>Name:</b></font></font></td>
                <td><h2>&nbsp;</h2>
                  <h2><b><%=name%></b></h2>
                  <p>&nbsp;</p></td>
              </tr>
              <tr> 
                <td height="37"></td>
                <td><a href="acc2.jsp?<%=name1%>"><font color="#0066CC"><b><font size="3">Send 
                  Friend Request</font></b></font></a></td>
              </tr>
              <tr> 
                <td></td>
                <td><a href="frd7.jsp?<%=name1%>"><font color="#0066CC"><b><font size="3">View 
                  Details</font></b></font></a></td>
              </tr>
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
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          <p>&nbsp;</p>
        
          </td>
<td width="33">


 
<p>&nbsp;</p>
            <p>&nbsp;</p></td>
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
