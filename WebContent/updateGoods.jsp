<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateGoods.jsp' starting page</title>
    
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
    String id=request.getParameter("id");
  	String name=request.getParameter("name");
  	name=new String(name.getBytes("ISO-8859-1"),"utf-8");
  	String price=request.getParameter("price");
  	String stock=request.getParameter("stock");
  	String img1=request.getParameter("img1");
  	String img2=request.getParameter("img2");
  	String img3=request.getParameter("img3");
  	String img4=request.getParameter("img4");
  	 %>
    <form action="GoodsServlet?opr=update&id=<%=id%>" method="post">
	<table>
		<tr>
			<td>商品编号：</td>
			<td><%=id%></td>
		</tr>
		<tr>
			<td>商品名称：</td>
			<td><input type="text" name="name" value="<%=name%>"></td>
		</tr>
		<tr>
			<td>商品价格：</td>
			<td><input type="text" name="price" value="<%=price%>"></td>
		</tr>
		<tr>
			<td>商品库存：</td>
			<td><input type="text" name="stock" value="<%=stock%>"></td>
		</tr>
		<tr>
			<td>图片一：</td>
			<td><input type="text" name="img1" value="<%=img1%>"></td>
		</tr>
		<tr>
			<td>图片二：</td>
			<td><input type="text" name="img2" value="<%=img2%>"></td>
		</tr>
		<tr>
			<td>图片三：</td>
			<td><input type="text" name="img3" value="<%=img3%>"></td>
		</tr>
		<tr>
			<td>图片四：</td>
			<td><input type="text" name="img4" value="<%=img4%>"></td>
		</tr>
		
	    <tr>
			<td colspan="2" align="center"><input type="submit" value="修改">  <input type="reset" value="重置">
			</td>
		</tr>
	</table>
</form>
  </body>
</html>
