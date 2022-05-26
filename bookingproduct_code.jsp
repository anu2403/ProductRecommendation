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

String pnm="",pcatogry="";
int pcode=0,amt=0;

String a=request.getParameter("text1");
String b=request.getParameter("text2");
String c=request.getParameter("text3");
session.setAttribute("c",c);
String d=request.getParameter("text4");
String e=request.getParameter("text5");
 pcode=Integer.parseInt(request.getParameter("text6"));
int g=Integer.parseInt(request.getParameter("text7"));
String h=request.getParameter("select");
String i=request.getParameter("text8");
String j=request.getParameter("text9");
String k=request.getParameter("text10");
String l=request.getParameter("text11");



try
{
//==================================================amount cal==========================================================
ResultSet res1=st.executeQuery("select * from  productupload where pcode='"+pcode+"'");

while(res1.next())
{
	amt=res1.getInt(4);

pnm=res1.getString(5);
pcatogry=res1.getString(6);
}

int totalcost=amt*g;

session.setAttribute("totbill",totalcost);

String query="insert into bookingproduct values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"',"+g+",'"+h+"','"+i+"','"+j+"','"+k+"','"+l+"',"+pcode+",'"+pcatogry+"','"+pnm+"',"+totalcost+")";

st.executeUpdate( query);

session.setAttribute("stock","Your Product Delevered Successfully");
response.sendRedirect("mails.jsp");

}
catch(Exception ee1)
{
out.print(ee1);
}

%>
</body>
</html>
