<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<%@ page import="java.sql.*" %> 
<%@ page import="org.apache.commons.fileupload.*"%> 
<%@ page import="org.apache.commons.io.output.*"%> 
<%@ page import="org.apache.commons.fileupload.servlet.*"%> 
<%@ page import="org.apache.commons.fileupload.disk.*"%> 
<%@ page import="java.io.*"%> 
<%@ page import="java.util.*"%> 
<%@ include file="conn.jsp"%>
<body>
<%
String a=request.getParameter("text1");
String b=request.getParameter("select");
String photo=request.getParameter("f1");
String c=request.getParameter("text2");
String d=request.getParameter("text3");
String e=request.getParameter("text4");
String f=request.getParameter("text5");


st.executeUpdate("insert into productupload values('"+a+"','"+b+"','"+photo+"','"+c+"','"+d+"','"+e+"','"+f+"')");
response.sendRedirect("admin_panel.jsp");
%>
</body>
</html>
