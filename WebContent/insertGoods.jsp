<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insertGoods.jsp' starting page</title>
    
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
    <form action="GoodsServlet?opr=insert" method="post" enctype="multipart/form-data">
    	<table>
    		<tr>
    			<td>商品编号:</td>
    			<td><input type="text" name="id"/></td>
    		</tr>
    		<tr>
    			<td>商品名称:</td>
    			<td><input type="text" name="name"/></td>
    		</tr>
    		<tr>
    			<td>商品价格:</td>
    			<td><input type="text" name="price"/></td>
    		</tr>
    		<tr>
    			<td>商品库存:</td>
    			<td><input type="text" name="stock"/></td>
    		</tr>
    		<tr>
    			<td>图片一:</td>
    			<td><input type="file" name="img1"/></td>
    		</tr>
    		<tr>
    			<td>图片二:</td>
    			<td><input type="file" name="img2"/></td>
    		</tr>
    		<tr>
    			<td>图片三:</td>
    			<td><input type="file" name="img3"/></td>
    		</tr>
    		<tr>
    			<td>图片四:</td>
    			<td><input type="file" name="img4"/></td>
    		</tr>
    		<tr>
    			<td><input type="submit" name="submit" value="提交"/></td>
    			<td><input type="reset" name="reset" value="重置"/></td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
