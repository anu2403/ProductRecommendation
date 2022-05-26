<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%@ include file="conn.jsp"%>
<body>
<%
String a=request.getParameter("select");
int  b=Integer.parseInt(request.getParameter("textfield"));

String query="select * from rating where productnm='"+a+"'";

ResultSet rs=st.executeQuery(query);
int i=0,s=0,total=0;

 	while(rs.next())
	 { 
	 
	 i++;
s=Integer.parseInt(rs.getString(2));
	 
	 }
	 
	 total=s+b;
	 
	 if(i>0)
	 st.executeUpdate("update  rating  set ratingg='"+total+"' where productnm='"+a+"'");
	else
	
	st.executeUpdate("insert into rating values('"+a+"','"+b+"')");



response.sendRedirect("productrating.jsp");

%>
</body>
</html>
