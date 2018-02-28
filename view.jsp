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

		<style>
		.CSSTableGenerator {
	margin:0px;padding:0px;
	width:100%;
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #ffffff;
	
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
	
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
	
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
	
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}.CSSTableGenerator table{
    border-collapse: collapse;
        border-spacing: 0;
	width:100%;
	height:100%;
	margin:0px;padding:0px;
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
}.CSSTableGenerator tr:hover td{
	background-color:#ffaaaa;
		

}
.CSSTableGenerator td{
	vertical-align:middle;
		background:-o-linear-gradient(bottom, #56aaff 5%, #ffaaaa 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #56aaff), color-stop(1, #ffaaaa) ); 
	background:-moz-linear-gradient( center top, #56aaff 5%, #ffaaaa 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#56aaff", endColorstr="#ffaaaa");	background: -o-linear-gradient(top,#56aaff,ffaaaa);

	background-color:#56aaff;

	border:1px solid #ffffff;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:16px;
	font-size:14px;
	font-family:Times New Roman;
	font-weight:bold;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #ea0b77 5%, #ffffff 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ea0b77), color-stop(1, #ffffff) );
	background:-moz-linear-gradient( center top, #ea0b77 5%, #ffffff 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ea0b77", endColorstr="#ffffff");	background: -o-linear-gradient(top,#ea0b77,ffffff);

	background-color:#ea0b77;
	border:0px solid #ffffff;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:17px;
	font-family:Times New Roman;
	font-weight:bold;
	color:#000000;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #ea0b77 5%, #ffffff 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ea0b77), color-stop(1, #ffffff) );
	background:-moz-linear-gradient( center top, #ea0b77 5%, #ffffff 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ea0b77", endColorstr="#ffffff");	background: -o-linear-gradient(top,#ea0b77,ffffff);

	background-color:#ea0b77;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
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
                      
                        <li><a href="adminview.jsp">Back</a></li>
                      
                    </ul>
                </div>
                <div id="header">
                    
					
                </div>

                
    <div id="index_content"> 
	
	<div class="CSSTableGenerator">
      <table width="655" height="204" align="center"  >
        <tr> 
          <td height="39" colspan="6" align="center" >User   Details</td>
		
        </tr>
        <tr   > 
          <td width="172"  > User Id</td>
          <td width="228">Name</td>
          <td width="228">Email </td>
          <td width="228">Password </td>
          <td width="228">Mobile </td>
		   <td width="228">Birthday </td>
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
	Class.forName("com.mysql.jdbc.Driver");
	  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook","root","admin");
	
//con=databasecon.getconnection();
 st=con.createStatement();   
 String sqll="select id,name,email,password,mobile,birthday from login ";
 rs=st.executeQuery(sqll);
while(rs.next()){
	uid=rs.getString("id");
	name=rs.getString("name"); 
	
	String email=rs.getString("email");
	String password=rs.getString("password");
	String mobile=rs.getString("mobile");
	String birthday=rs.getString("birthday");
	
	
	

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
            <%=password%>
          </td>
		  <td >
            <%=mobile%>
          </td><td >
            <%=birthday%>
          </td>
      
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
      </div>
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
