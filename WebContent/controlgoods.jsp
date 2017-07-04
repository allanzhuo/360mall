<%@page import="entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	*{margin: 0px;padding: 0px;}
	td{border: 1px solid red;padding: 2px 0px;}
	table{border-collapse: collapse; margin: 0px auto;width:1024px;}
	table img{width: 100px;height: 100px;}
	#table1 td{border: 0px;}
	#header{background-color: green;color: white;font-weight: bold;text-align: center;line-height: 28px;}
	#header a{color: white; text-decoration: none;}
	.chb{text-align: center;}
	div{margin: 2% auto}
	caption{font-size: 20px;}
	</style>  
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	function checkall(){
		var checkboxes=document.getElementsByName("chb");
		for(var i=0;i<checkboxes.length;i++){
			checkboxes[i].checked=document.getElementById("all").checked;
		}
	}
	$(document).ready(function(){
		$(".del").click(function(){
		return confirm("确定要删除吗？");	
		});
	});
</script>
</head>
  
  <body>
  <div>
   <form action="GoodsServlet?opr=fuzzy&from=admin" method="post">
     <table id="table1">
      	 <caption>商品信息管理</caption>
    	 <tr><td>关键字:<input type="text" name="goods"/>&nbsp;&nbsp;<input type="submit" value="查询">&nbsp;&nbsp;<a href="insertGoods.jsp"><input type="button" value="添加商品"></a></td></tr>
     </table>
     </form>
    <form action="GoodsServlet?opr=mdel" method="post">
    <table>
  
    <tr id="header"><td><input type="checkbox" id="all" onclick="checkall()"/></td>
    <td>商品编号</td><td>商品名称</td><td>商品价格</td><td>商品库存</td><td>图片一</td><td>图片二</td><td>图片三</td><td>图片四</td><td>操作</td></tr>
    <c:forEach var="goods" items="${listgoods}" begin="0" end="${listgoods.size()}">
    <tr>
    	<td class="chb"><input type="checkbox" name="chb" value="${goods.getId()}"></td>
    	<td>${goods.getId()}</td><td>${goods.getName()}</td>
    	<td>${goods.getPrice()}</td><td>${goods.getStock()}</td>
    	<td><img src="img/${goods.getImg1()}"/></td><td><img src="img/${goods.getImg2()}"/></td>
    	<td><img src="img/${goods.getImg3()}"/></td><td><img src="img/${goods.getImg4()}"/></td>
    	<td style="text-align: center;"><a href="updateGoods.jsp?id=${goods.getId()}&name=${goods.getName()}&price=${goods.getPrice()}&stock=${goods.getStock()}&img1=${goods.getImg1()}&img2=${goods.getImg2()}&img3=${goods.getImg3()}&img4=${goods.getImg4()}">修改</a><br><br><a href="GoodsServlet?opr=del&id=${goods.getId()}" class="del">删除</a></td>
    </tr>
    
   </c:forEach>
   <tr style="text-align: center;"><td><input type="submit" value="删除" /></td>
    <td colspan="8"><a href="UserServlets?opr=list">用户信息管理</a></td><td><a href="admin.jsp">管理首页</a></td></tr>
     </table>
     </form>
     
</div>
  </body>
</html>
