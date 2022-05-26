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
	color: #992B33;
	text-align: left;
}
#form1 table tr td table tr td {
	text-align: left;
	font-size: small;
}
-->
</style>
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<style type="text/css">
body {
	background-image: url();
	background-repeat: no-repeat;
}
#form1 table tr td table tr td p a {
}
</style>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
</head>
<%@include file="header.jsp" %>
<body>
<form id="form1" name="form1" method="post" action="process.jsp">

<table rules="none" width="90%" align="center" cellpadding="4" cellspacing="4" >

  <tr>
    <td height="94" align="left" valign="top" bgcolor="#FFFFFF"><h1>&nbsp; </h1>
      <p>&nbsp;</p></td>
    <td width="450" align="left" valign="top" bgcolor="#FFFFFF"><hr />
      
      <table width="370" height="184" align="center" cellpadding="5" cellspacing="1" rules="none">
        <tr>
          <td width="117" height="24" valign="bottom">User Name</td>
          <td width="224" valign="bottom"><span id="sprytextfield1">
            <input name="t1" type="text" id="t1" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
        <tr>
          <td height="24" align="center">Password</td>
          <td><span id="sprytextfield2">
            <input name="t2" type="text" id="t2" size="33" />
            <span class="textfieldRequiredMsg">A value is required.</span></span></td>
          </tr>
        <tr>
          <td height="24" align="center">Type</td>
          <td><select name="select" id="select">
            <option>Admin</option>
            <option>User</option>
            </select></td>
          </tr>
        <tr>
          <td height="72">&nbsp;</td>
          <td>
            <input type="submit" name="button" id="button" value="Submit" />
            
            </td>
          </tr>
        <tr> </tr>
        <tr> </tr>
        <tr> </tr>
        <tr> </tr>
        </table>
      <hr /></td>
  </tr>
  <tr>
    <td height="53" colspan="2" align="right" valign="top" bgcolor="#70A8D7">&nbsp;</td>
  </tr>
  <tr>
    <td height="260" colspan="2" valign="top"><p>
      <marquee>
      <img src="productimage/brand1.png" width="270" height="120" /><img src="productimage/brand2.png" width="270" height="120" /><img src="productimage/brand3.png" width="270" height="120" />
      </marquee>
        <br />
        <marquee direction="right">
        <img src="productimage/brand5.png" width="270" height="120" /><img src="productimage/brand6.png" width="270" height="120" /><img src="productimage/brand4.png" width="242" height="120" />
        </marquee>
    </p></td>
    </tr>
  <tr>
    <td height="14" colspan="2" align="center" valign="top"><h2>Latest Products</h2></td>
  </tr>
  <tr>
    <td height="14" colspan="2" align="right" valign="top"><table width="200" border="0" align="center">
      <tr>
        <td height="299"><img src="productimage/product-1.jpg" width="200" height="250" /></td>
        <td><img src="productimage/product-thumb-1.jpg" width="200" height="250" /></td>
        <td><img src="productimage/product-2.jpg" width="200" height="250" /></td>
        <td><img src="productimage/product-3.jpg" width="200" height="250" /></td>
        <td><img src="productimage/product-4.jpg" width="200" height="250" /></td>
      </tr>
      <tr>
        <td height="299" align="center"><img src="productimage/product-thumb-3.jpg" width="100" height="90" /></td>
        <td><img src="productimage/product-thumb-4.jpg" width="100" height="90" /></td>
        <td><img src="productimage/99.jpg" width="194" height="145" /></td>
        <td><img src="productimage/product-thumb-2.jpg" width="190" height="190" /></td>
        <td><img src="productimage/brand5.png" width="209" height="120" /></td>
      </tr>
      </table></td>
  </tr>
</table>

</form>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
</script>
</body>
</html>
