<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<%
  	String username=request.getParameter("un");
  	username=new String(username.getBytes("ISO-8859-1"),"utf-8");
  	String password=request.getParameter("pwd");
  	String cellphone=request.getParameter("cell");
  	 %>
    <form action="UserServlets?opr=update&un=<%=username %>" method="post">
	<table>
		<tr>
			<td>用户名：</td>
			<td><%=username%></td>
		</tr>
		<tr>
			<td>密码：</td>
			<td><input type="password" name="password" value="<%=password%>"></td>
		</tr>
		<tr>
			<td>密码：</td>
			<td><input type="text" name="cellphone" value="<%=cellphone%>"></td>
		</tr>
		
	    <tr>
			<td colspan="2" align="center"><input type="submit" value="修改">  <input type="reset" value="重置">
			</td>
		</tr>
	</table>
</form>
  </body>
</html>
