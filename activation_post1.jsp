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
				
				
				String msg=request.getParameter("msg");
				session.setAttribute("msg",msg);

				%>
				
				
				
               
				<form action="code1.jsp">
				
				<table width="904" height="292">
				<tr>
          <td align="center" colspan="2" height="40"><font color="#FFCC00" size="5"><strong>Post Activation Page</strong></font></td>
        </tr>
		<tr><td width="416"><img src="images/activation_icon.jpg" width="330" height="250"></td>
		<td width="476">
		
		<table width="458" height="101"><tr>
                <td height="55"><font color="#FFFFFF" size="4"><strong>Enter Your Post Activation 
                  code</strong></font></td>
		<td ><input type="text" name="key"></td>
		
		</tr>
		
		<tr><td colspan="2" align="center" class="btn"><input type="submit" name="submit" value="Submit"></td></tr>
		
		</table>
		
		
		</td>
		
		
		
		</tr>
				
				
				</table>
				</form>
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
