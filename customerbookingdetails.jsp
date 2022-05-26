<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
	font-weight: normal;
}
.style1 {color: #FFFFFF}
.style2 {color: #00FFFF}
.style10 {font-size: 12px}
.style12 {color: #990000}
.style16 {color: #FF0000}
.style17 {font-size: 14px}
.style18 {font-size: 14}
.style19 {color: #FFFFFF; font-size: 12px; }
#form1 table tr td a {
	font-size: 12px;
}
-->
</style>
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarVertical.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.style15 {
	font-size: 16px;
}
.style191 {
	font-size: 11px;
	font-weight: normal;
}
.style20 {
	font-size: 14px;
	font-weight: bold;
}
.style201 {
	font-size: 14px;
	font-weight: bold;
}
.style202 {
	font-size: 14px;
	font-weight: bold;
}
</style>
</head>
<%@ include file="conn.jsp"%>
<body>
</form>
<form id="form1" name="form1" method="post" action="">
  <table rules="none" width="90%" align="center" cellpadding="5" cellspacing="5">
    <tr>
      <td height="133"><h1><img src="img/www2.jpg" width="628" height="182" /></h1></td>
    </tr>
    <tr>
      <td valign="top" bgcolor="#2E6297">&nbsp;</td>
    </tr>
    <tr>
      <td width="996" valign="top"><p>&nbsp;</p>
        <p>&nbsp;</p>
        <table width="1300" border="1" align="center" cellpadding="2" cellspacing="2"  rules="none">
          <tr>
            <td width="105" align="center"><span class="style20"> Name</span></td>
            <td width="98" align="center"><span class="style201">Phone</span></td>
            <td width="92" align="center"><span class="style20">Email</span></td>
            <td width="109" align="center">Address</td>
            <td width="126" align="center">Pin Number</td>
            <td width="109" align="center">Qty</td>
            <td width="109" align="center">Card Type</td>
            <td width="109">C.Holder Name</td>
            <td width="103">Product Code</td>
            <td width="106">Product Catogry</td>
            <td width="106">Product Name</td>
            <td width="106">Total Cost</td>
          </tr>
         
           <%
					
String query="select * from bookingproduct";
ResultSet rs=st.executeQuery(query);
				
            while(rs.next())
{
%>
 <tr>
            <td align="center"><span style="font-size:12px"><%=rs.getString(1)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(2)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(3)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(4)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(5)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(6)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(7)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(11)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(12)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(13)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(14)%></span></td>
            <td align="center"><span style="font-size:12px"><%=rs.getString(15)%></span></td>
            <%
}
%>
          </tr>
        </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p></td>
    </tr>
    <tr>
      <td bgcolor="#2E6297">&nbsp;</td>
    </tr>
  </table>
</form>
<script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
</script>
</body>
</html>
