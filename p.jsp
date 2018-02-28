<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>

<%
   //	String a2 = request.getQueryString();
String aa=(String)session.getAttribute("emailid");
String query="SELECT name,acount from login where email='"+aa+"'";
JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/facebook","com.mysql.jdbc.Driver","root","admin");

dataset.executeQuery(query);
JFreeChart chart = ChartFactory .createBarChart3D("Over All","sno","Performance",dataset,PlotOrientation.VERTICAL,true, true, false);
try
{

ChartUtilities.saveChartAsJPEG(new File("d:/apache-tomcat-6.0.18/webapps/facebook/images/attack.jpg"), chart, 600, 400);
response.sendRedirect("oo.jsp");

}

catch (IOException e)
{
System.out.println("Problem in creating chart.");
}
%>







