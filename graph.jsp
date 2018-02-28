<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import=" java.security.MessageDigest"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>
<%String uname=request.getParameter("cd");

System.out.println(uname);%>

 <%   
	
  
             		   try
		   {
			   	Connection con=databasecon.getconnection(); 
   				Statement st=con.createStatement();
				ResultSet rs =st.executeQuery("SELECT sum(size) FROM up where uname='"+uname+"'");
				while(rs.next())
				{ 
				 %> 
		<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<head>
<!-- graphf-------------->

<script type="text/javascript" src="css/canvasjs.min.js"></script>
  	
      <script type="text/javascript">
      window.onload = function () {
          var chart = new CanvasJS.Chart("chartContainer", {
              theme: "theme2",//theme1
              title:{
                  text: " Tenant File Size"              
             },
              data: [              
              {
// Change type to "bar", "splineArea", "area", "spline", "pie",etc.
                  type: "column",
                  dataPoints: [
                 
                  { label: "Tenant File Size", y:<%=rs.getString("sum(size)")%> }
                  ]
              }
              ]
          });

          chart.render();
      }
  </script> 
  <script type="text/javascript" src="/assets/script/canvasjs.min.js"></script>

	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Business Solution Template, Free Web Template, Website Layout</title>
<meta name="keywords" content="free css templates, web templates, Business Solution, XHTML, CSS" />
<meta name="description" content="Business Solution Template - Free Web Template, HTML CSS Layout, Free Download" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field){

    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;

}
</script>
<!--[if lt IE 7]>
<style type="text/css">
    
    .templatemo_icon_home { behavior: url(iepngfix.htc); }
    .templatemo_icon_cube { behavior: url(iepngfix.htc); }
    .templatemo_icon_tick { behavior: url(iepngfix.htc); }
    
</style>
<![endif]-->
</head>
<body>
<!--  Free CSS Template designed by TemplateMo.com  -->
	<div id="templatemo_container">
		<div id="templatemo_header">
        	<div id="templatemo_login">
            	
            </div>
        </div><!-- End Of Header -->
        
        <div id="templatemo_content">
        	<div id="templatemo_left_content">
            	<div class="templatemo_menu">
                	<ul>
						<li><a href="admin.jsp" target="_parent" class="current">UserDetails</a></li>
						<li><a href="adminfile.jsp" target="_parent">Store File Details</a></li>
						<li><a href="admincloud.jsp" target="_parent">Store Cloud</a></li>
					  <li><a href="g1.jsp" target="_parent">Graph View</a></li>	
					  	<li><a href="index.html">LogOut</a></li>
					</ul>
                </div>

			
      <div class="templatemo_section_bottom_line"></div>
            <div class="templatemo_section_bottom_line">
        <P>&nbsp;</P>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="images/financial-graph.jpg" width="265" height="222">
      </div>
            

            </div><!-- End Of left Content -->
            <div id="templatemo_right_content">
				<div id="templatemo_content_area">
                	
        <div class="templatemo_title"> <font color="#FFFFFF" ><strong>Scalable 
          architecture for multi-user encrypted SQL operations on cloud database 
          services</strong></font></div>
                    
                  
				  
				  
				  
				     <div id="chartContainer" style="height: 300px; width: 100%;"> </div>




   
			
 
    <%
	   					}
		   }
		   catch(Exception e)
		   {
		   }

		 
		  %>
				  
				  
				  
				  
				  
				  
				  
				  
     
<div class="templatemo_title">

                   	                 </div>
                    
        <div class="thumbs"></div>
</div>
            </div><!-- End Of Right Content -->
            <div id="templatemo_right_content_bottom">
            	
            </div>
        </div><!-- End Of Content -->
    </div><!-- End Of Container -->
	<!--  Free CSS Templates from www.TemplateMo.com  -->
<div align=center>

</div>
</body>
</html>