<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.io.*,java.sql.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style6 {color: #000000; font-weight: bold; }
.style7 {color: #000000}
.style9 {font-size: 12px}
.style10 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style11 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10;
}
.style12 {
	font-size: 10px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style14 {
	font-family: "Courier New", Courier, monospace;
	font-size: 18px;
	color: #FFF;
}
.style15 {font-family: "Courier New", Courier, monospace}
body {
	background-image: url();
	background-color: #000;
}
-->
</style>
</head>
<%@ include file="conn.jsp"%>
<body>
<table width="70%" border="0" align="center" cellpadding="0" cellspacing="0" >
  <tr>
    <td height="104" align="right" valign="top"><img src="img/hd.jpg" width="1084" height="252" /><br /></td>
  </tr>
  <tr>
    <td width="1009" height="344" valign="top"><p><a href="welcome.jsp">Back</a></p>
      <table rules="none" width="100%" border="1" align="center" cellpadding="5" cellspacing="5">
        <tr>
          <td width="178" align="center" bgcolor="#804040"><div align="center" class="style14">Product Code</div></td>
          <td width="301" align="center" bgcolor="#804040"><div align="center" class="style14">Classfication </div></td>
          <td width="247" align="center" bgcolor="#804040"><div align="center" class="style14">PHOto</div></td>
          <td width="270" align="center" bgcolor="#804040"><span class="style14">Cost</span></td>
          <td width="270" align="center" bgcolor="#804040"><span class="style14">P.Name</span></td>
          <td width="270" align="center" bgcolor="#804040"><span class="style14">Company Name</span></td>
          <td width="270" align="center" bgcolor="#804040"><span class="style14">Company Name</span></td>
          <td width="270" align="center" bgcolor="#804040"><div align="center"><span class="style14">Status</span></div></td>
        </tr>
        <tr>
	
          <%

String a=request.getParameter("value");
String b=request.getParameter("text2");
 	
String query="select * from productupload where classfication='"+a+"'  or  pname='"+b+"'";
ResultSet rs=st.executeQuery(query);



while(rs.next())
{
%>
          <td bgcolor="#FFFFFF"><div align="center"><%= rs.getString(1) %></div></td>
          <td bgcolor="#FFFFFF"><div align="center"><%= rs.getString(2) %></div></td>
        
		 
          <td bgcolor="#FFFFFF"><div align="center"><img src="productimage/<%= rs.getString(3)%>" width="100" height="100" border="2" /></div></td>
          <td align="center" bgcolor="#FFFFFF"><%= rs.getString(4) %></td>
          <td align="center" bgcolor="#FFFFFF"><%= rs.getString(5) %></td>
          <td align="center" bgcolor="#FFFFFF"><%= rs.getString(6) %></td>
          <td align="center" bgcolor="#FFFFFF"><%= rs.getString(7) %></td>
          <td width="343" align="center" bgcolor="#FFFFFF"><span style="font-size:12px"><a href="bookingproduct.jsp?value=<%=rs.getString(1)%>">Buy</a></span></td>

           
        </tr>
        <%
   }
	  %>
    </table></td>
  </tr>
</table>
</body>
</html>
