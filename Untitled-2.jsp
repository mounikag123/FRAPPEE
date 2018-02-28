<%@ page import="java.sql.*,databaseconnection.*"%>
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
<script language="javascript" type="text/javascript" src="datetimepicker.js">

</script>

		
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
                        <li><a href="index.html">Back</a></li>
                      
                    </ul>
                </div>
                <div id="header">
                    
					
                </div>

                
    <div id="index_content"> 
      <table width="655" height="204" align="center"  >
        <tr>
          <td height="39" colspan="11" >Retrive from Encypeted Database</td>
        </tr>
        <tr   > 
          <td width="172"  > User Id</td>
          <td width="228">Name</td>
          <td width="228">Email </td>
          <td width="228">Location </td>
          <td width="228">View Details </td>
        </tr>
        <%
		
		
		

		
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;


String uid=null,name=null,age=null,zip=null,disease=null,msg1=null,md=null,file=null,file1=null ;

String location=request.getParameter("search");
try
{
con=databasecon.getconnection();
 st=con.createStatement();   
 String sqll="select id,name,email,location from location_server where location='"+location+"'";
 rs=st.executeQuery(sqll);
while(rs.next()){
	uid=rs.getString("id");
	name=rs.getString("name"); 
	
	String email=rs.getString("email");
	String location1=rs.getString("location");
	
	

%>
        <tr> 
          <td >
            <%=uid%>
          </td>
          <td >
            <%=name%>
          </td>
          <td >
            <%=email%>
          </td>
          <td >
            <%=location1%>
          </td>
          <td><font size="4" color="#FF9900"><b><a href="search2.jsp"> Click Details 
            </a> </b></font></td>
        </tr>
        <% 

}


}

catch(Exception e2)
{
out.print(e2);
}





%>
      </table>
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
