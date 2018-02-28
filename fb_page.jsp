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
                        <li><a href="index.html">back</a></li>
                        
                    </ul>
                </div>
                <div id="header">
                    
					
                </div>

                <div id="index_content">
               
			   <%
			   String email=(String)session.getAttribute("emailid");
			   
			   String name=(String)session.getAttribute("name");
			   %>
			   
			   
				<table><tr><td width="309">
  
    <div id="main"> 
     
	  <p><img src="user2.jsp" width="135" height="155"> </p>
            <p>&nbsp;</p>
            <p><font size="+1" color="#CC0099"><b>Welcome:</b></font>&nbsp;<font size="3"><b><%=name%></b></font> </p>
            <p>&nbsp;</p>
 <form name="s" action="search2.jsp">
 <table><tr><td><font color="#33CCFF" face="Times New Roman, Times, serif" size="4"><i><b>
 Search</b></i></font>
 <input type="text" name="v" size="14" placeholder="Search friends"></td></tr></table></form>
          <h3><br>
            &nbsp;&nbsp;<a href="friends.jsp"><font  color="#CC9900"><b>Friends</b></font></a></h3>
          <h3><br>
            &nbsp;&nbsp;<a href="frd2.jsp"><font color="#00CC66"><b>Friends Request</b></font></a> 
          </h3>
            <h3><br>
              <font color="#CC3366">&nbsp;&nbsp;<b>FAVOURITES</b></font></h3>
            <h3><br>
              &nbsp; &nbsp;<a href="ga.jsp"><font color="#009933"><b><font size="2">My 
              Gallery</font></b></font></a></h3>
            <h3><br>
              &nbsp;&nbsp;<a href="post_code_emailsend.jsp"><font color="#009933"><b><font size="2">Add 
              Messages</font></b></font></a></h3>
            <h3><br>
              &nbsp;&nbsp;<a href="post_code_emailsend1.jsp"><font color="#009933"><b><font size="2">Add 
              Photos</font></b></font></a></h3>
            <h3><br>
              &nbsp;&nbsp;<a href="logout.jsp"><font color="#FF3300" face="Times New Roman, Times, serif"><strong> 
              LOGOUT</strong></font></a> </h3></td>
 <td width="629"><table><tr><td>
 <p>&nbsp;</p>
                <p><a href="post_code_emailsend.jsp"><font color="#33CC33" face="Times New Roman, Times, serif" size="+2">Add_  Messages</font></a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   <a href="post_code_emailsend1.jsp"><font color="#33CC33" face="Times New Roman, Times, serif" size="+2">Add_Photos</font></a>  
				   
				  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				   <a href="graph1.jsp"><font color="#33CC33" face="Times New Roman, Times, serif" size="+2">Status</font></a>  
				   
				   
				   
				   
                  </p>
				  <br>
               
	<table> 
<%
String a=(String)session.getAttribute("a");
//String w=(String)session.getAttribute("w");

String m=null,n=null,o=null,p=null,q=null,r=null,s=null,t=null;
try {

Class.forName("com.mysql.jdbc.Driver");

Connection con5 = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");

PreparedStatement stmt5 = con5.prepareStatement("select name,msg,id1,id from photo where log='"+a+"'");

ResultSet rs5 = stmt5.executeQuery();

while(rs5.next()) {
 m=rs5.getString(1);
 n=rs5.getString(2);
  o=rs5.getString(3);
  session.setAttribute("o",o);
  p=rs5.getString(4);
    session.setAttribute("p",p);
	
  %>
  <br>

<tr><td><img src="friends1.jsp?<%=o%>" height="55" width="55"></td>
    <td><font color="#006699">&nbsp;</font> <font color="#006699"><b>
      <%=m%>&nbsp;&nbsp;&nbsp;&nbsp;
      </b></font><font   color="#FFCC00"><b>shared</b></font>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#006699"><b>a photo --></b></font></td>
  </tr>


<tr><td><font  color="#99FF33"><b><%=n%></b></font></td><td><a href="friends6.jsp?<%=p%>"><img src="friends3.jsp?<%=p%>" height="205" width="205"></a></td></tr>




<%
}
}
catch(Exception e3)
{
out.println(e3.getMessage());

}




try {

Class.forName("com.mysql.jdbc.Driver");

Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");

PreparedStatement stmt1 = con1.prepareStatement("select name,msg,id1 from message where log='"+a+"'");

ResultSet rs1 = stmt1.executeQuery();

while(rs1.next()) {
 q=rs1.getString(1);
    r=rs1.getString(2);
	s=rs1.getString(3);
%>
 <tr><td><img src="friends1.jsp?<%=s%>" height="55" width="55"></td><td><font color="#006699"><b>&nbsp;&nbsp;&nbsp;&nbsp;<%=q%>&nbsp;&nbsp;&nbsp;&nbsp;</b></font>
<font  color="#FFCC00">shared  &nbsp;&nbsp;&nbsp;&nbsp;</font><font color="#006699"><b>a message --></font> <font   color="#CC33FF"><%=r%>"</font>"</b> </td>
</tr>
  
<%
}

}
catch(Exception e3)
{
out.println(e3.getMessage());

}







try {

Class.forName("com.mysql.jdbc.Driver");

Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");

PreparedStatement stmt1 = con1.prepareStatement("select name,msg,id1,video from videos where log='"+a+"'");

ResultSet rs1 = stmt1.executeQuery();

while(rs1.next()) {
 q=rs1.getString(1);
    r=rs1.getString(2);
	s=rs1.getString(3);
	String video=rs1.getString(4);
%>
 <tr><td><img src="friends1.jsp?<%=s%>" height="55" width="55"></td><td><font color="#006699"><b>&nbsp;&nbsp;&nbsp;&nbsp;<%=q%>&nbsp;&nbsp;&nbsp;&nbsp;</b></font>
<font  color="#FFCC00">shared  &nbsp;&nbsp;&nbsp;&nbsp;</font>
<font color="#006699"><b>a message --></font> <td> <video width="400" height="320"  > <source src="documents/<%=video%>" type="video/ogg"> 
                    <source src="documents/<%=video%>" type="video/mp4"> <source src="documents/<%=video%>" type="video/webm"> 
                    <object data="documents/<%=video%>" width="320" height="240">
                      <embed src="documents/<%=video%>" width="320" height="240"></embed> 
                      <embed width="320" height="240" src="documents/<%=video%>"></embed> 
                    </object>
                    </video></td></b> </td>
</tr>
  
<%
}

}
catch(Exception e3)
{
out.println(e3.getMessage());

}







%>
</table>
	
	</td>
	
 
 <td>&nbsp; </td>
 
 </tr></table>
 
 
 
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
