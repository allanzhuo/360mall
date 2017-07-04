<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
table{margin: 13% auto;width: 130px;}
html body{background-image: url("img/control.jpg");}

</style>
  </head>
  
  <body>
    <div>
    	<table>
    	<caption>网站后台管理平台</caption>
    		<tr><td>&nbsp;</td></tr>
    		<tr><td><a href="index.jsp">1、网站首页</a></td></tr>
    		<tr><td>&nbsp;</td></tr>
    		<tr><td><a href="UserServlets?opr=list">2、用户信息管理</a></td></tr>
    		<tr><td>&nbsp;</td></tr>
    		<tr><td><a href="GoodsServlet?opr=list">3、商品信息管理</a></td></tr>
    	</table>
    </div>
  </body>
</html>
