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
<script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.style141 {	font-family: "Courier New", Courier, monospace;
	font-size: 18px;
	color: #FFF;
}
#form1 table tr td table tr td h1 {
	color: #FFF;
}
#form1 table tr td a {
}
body {
	background-image: url(img/174331.jpg);
}
</style>
</head>
<%@ include file="conn.jsp"%>
<body>

<form id="form1" name="form1" method="post" action="IconSearch.jsp">
<%
session.setAttribute("stock","");
%>

<table rules="none" width="974" border="0" align="center" cellpadding="4" cellspacing="4" >

  <tr>
    <td height="94" colspan="2" align="right" valign="top"><h1><img src="img/hd.jpg" width="1084" height="309" /><br />
    </h1></td>
  </tr>
  <tr>
    <td height="21" colspan="2" align="right" valign="top" bgcolor="#70A8D7"><span id="sprytextfield1">
      <input name="value" type="text" id="value" value="Classification" size="55" maxlength="22" />
      <span class="textfieldRequiredMsg">A value is required.</span></span><span id="sprytextfield2">
      <input name="text2" type="text" id="text2" value="Product Name" size="55" />
      <span class="textfieldRequiredMsg">A value is required.</span></span>
      <input type="submit" name="button" id="button" value="Search" /></td>
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
      <p><a href="productrating.jsp"><img src="img/qq.png" width="298" height="222" /></a></p></td>
  </tr>
  <tr>
    <td height="14" colspan="2" align="right" valign="top">
    
 <%
 String un=session.getAttribute("un").toString();
 	int popular=0;
	try
		{
 ResultSet rs=st.executeQuery("select * from bookingproduct where custnm='"+un+"'");
//--------------------------------------------------------------
 int count = 1, tempCount;
 
  int temp = 0,i=0,dbcount=0,s=0;
//-----------------------------------------------------------------
   int   a []  = new int[100];
 
	 while(rs.next())
	 { 
	
		
	a[i]=Integer.parseInt(rs.getString(12));
	s=s+a[i];
	
	i++;
	 }
	// out.print(s);

    popular = a[0];
   
  dbcount=i;
 
for ( i = 0; i < dbcount; i++)
  {
    temp = a[i];
    tempCount = 0;
    for (int j = 1; j < dbcount; j++)
    {
      if (temp == a[j])
        tempCount++;
    }
    if (tempCount > count)
    {
      popular = temp;
      count = tempCount;
    }
  }
  
//out.print(popular);
   
}
catch(Exception ee)
{
out.print(ee);
}
%>
</td>
  </tr>
  <tr>
    <td height="14" colspan="2" align="right" valign="top"><table rules="none" width="100%" align="center" cellpadding="5" cellspacing="5">
      <tr>
        <td width="126" bgcolor="#804040"><div align="center" class="style141">Product Code</div></td>
        <td width="176" bgcolor="#804040"><div align="center" class="style141">Classfication </div></td>
        <td width="155" bgcolor="#804040"><div align="center" class="style141">PHOto</div></td>
        <td width="99" bgcolor="#804040"><span class="style141">Cost</span></td>
        <td width="135" bgcolor="#804040"><span class="style141">P.Name</span></td>
        <td width="190" bgcolor="#804040"><span class="style141">Company Name</span></td>
        <td width="91" bgcolor="#804040"><div align="center"><span class="style141">Status</span></div></td>
      </tr>
      <tr>
        <%
	
String a=request.getParameter("value");
String b=request.getParameter("text2");
 	
String query1="select * from productupload where pcode='"+popular+"'";
ResultSet rs=st.executeQuery(query1);



while(rs.next())
{
%>
        <td><div align="center"><%= rs.getString(1) %></div></td>
        <td><div align="center"><%= rs.getString(2) %></div></td>
        <td><div align="center"><img src="productimage/<%= rs.getString(3)%>" width="100" height="100" border="2" /></div></td>
        <td align="center"><%= rs.getString(4) %></td>
        <td align="center"><%= rs.getString(5) %></td>
        <td align="center"><%= rs.getString(6) %></td>
        <td width="91" align="center"><span style="font-size:12px"><a href="bookingproduct.jsp?value=<%=rs.getString(1)%>">Buy</a></span></td>
      </tr>
      <%
   }
	  %>
    </table></td>
  </tr>
  <tr>
    <td height="14" colspan="2" align="right" valign="top"><table rules="none" width="100%" align="center" cellpadding="5" cellspacing="5">
      <tr>
        <%
		
	
ResultSet r=st.executeQuery("SELECT * FROM rating  ORDER BY ratingg DESC");
String top=null;

if(r.next())
{
top=r.getString(1);
}


ResultSet sr=st.executeQuery("select * from productupload where pname='"+top+"'");

while(sr.next())
{
%>
        <td width="80"><div align="center"><%=sr.getString(1) %></div></td>
        <td width="185"><div align="center"><%= sr.getString(2) %></div></td>
        <td width="135"><div align="center"><img src="productimage/<%= sr.getString(3)%>" width="100" height="100" border="2" /></div></td>
        <td width="86" align="center"><%= sr.getString(4) %></td>
        <td width="131" align="center"><%= sr.getString(5) %></td>
        <td width="180" align="center"><%= sr.getString(6) %></td>
        <td width="77" align="center"><span style="font-size:12px"><a href="bookingproduct.jsp?value=<%=sr.getString(1)%>">Buy</a></span></td>
      </tr>
      <%
   }
	  %>
    </table></td>
  </tr>
  <tr>
    <td height="14" colspan="2" align="right" valign="top" bgcolor="#804040"><a href="index.jsp">Logout</a></td>
  </tr>
</table>

</form>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "none", {validateOn:["blur"]});
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "none", {validateOn:["blur"]});
</script>
</body>
</html>
