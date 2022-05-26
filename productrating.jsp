<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>AdvanceOnLineVoatingMachineSystemUsingWebcam</title>
<style type="text/css">
<!--
.style7 {color: #000000}
.style9 {
	font-size: 12px;
	color: #FFF;
}
.style10 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style11 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10;
	text-align: right;
}
.style12 {
	font-size: 10px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.style13 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.style14 {
	font-family: "Courier New", Courier, monospace;
	color: #000000;
}
em {
	color: #B83044;
}
-->
</style>
<style type="text/css">
.style141 {	font-family: "Courier New", Courier, monospace;
	font-size: 18px;
	color: #FFF;
}
</style>
</head>
<%@ include file="conn.jsp"%>
<body>

<form id="form1" name="form1" method="post" action="productrating_code.jsp">

<table rules="none" width="974" border="1" align="center" cellpadding="4" cellspacing="4" >

  <tr>
    <td height="94" colspan="2" align="right" valign="top"><br />
      <img src="img/hd.jpg" width="1084" height="239" /></td>
  </tr>
  <tr>
    <td width="413" height="260" valign="top">
      <p>&nbsp;</p>
      <table width="466" align="center" rules="rows">
        <tr>
          <td width="142" align="center"><a href="IconSearch.jsp?value=Mobile"><img src="img/1.jpg" width="100" height="100" /></a></td>
          <td width="138"><a href="IconSearch.jsp?value=Computer"></a></td>
          <td width="170" align="center"><a href="IconSearch.jsp?value=Computer"><img src="img/2.jpg" width="100" height="100" /></a></td>
          </tr>
        <tr>
          <td colspan="3" align="center"><a href="IconSearch.jsp?value=TV"><img src="img/4.png" width="225" height="225" /></a></td>
          </tr>
      </table><p>&nbsp;</p>    </td>
    <td width="413" align="center" valign="top">
      <p>&nbsp;</p>
      <table rules="rows" width="353" border="1">
        <tr>
          <td colspan="2"><h1>
		 
    Product Rating</h1></td>
          </tr>
        <tr>
          <td width="115" height="32">Product Name</td>
          <td width="222">
             <select name="select" id="select">
           <%
		  String query="select * from productupload";
ResultSet rs=st.executeQuery(query);


while(rs.next())
{
	%>
  
	  <option><%=rs.getString(5)%></option>
      
<%
}

%>
          
       
         </td>
          </tr>
        <tr>
          <td>Rating(0..9)</td>
          <td><input name="textfield" type="text" id="textfield" size="22" /></td>
          </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" name="button" id="button" value="Submit" /></td>
          </tr>
        </table>
      <p>&nbsp;</p>
  
  <tr>
    <td height="14" colspan="2" align="right" valign="top" bgcolor="#70A8D7"><a href="index.jsp">Logout</a></td>
  </tr>
</table>

</form>
</body>
</html>
