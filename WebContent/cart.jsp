<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cart.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	h1{clear: both;}
	table{margin: 0px auto;width: 1024px;}
	table img{width: 100px;height: 100px;vertical-align: middle;}
	td{text-align: center;}
	th{line-height: 50px;background-color: #A52A2A;color: white;}
	#empty{margin: 0px 0px 0px 15%;}
	#submit{width: 100px;height: 40px;background-color:#A52A2A;border: 0px;color: white; };
	</style>
  <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  <script type="text/javascript">
  $(document).ready(function(e) {
  		/* $(".td").mouseover(function(){
			$(this).css("background-color","#A9A9A9").css("color","white");
		}).mouseout(function(){
			$(this).css("background-color","white").css("color","black");
		}); */
		
		$(".del").click(function(){
		return confirm("确定要删除吗？");	
		});
		
  });
  
  </script>
  
  </head>
  
  <body>
  <%@ include file="header.jsp" %>
     <h1>我的购物车</h1>
   <hr> 
   
   <form action="" method="post">	
   <c:if test="${empty list2}">
	<div id="empty"><a href="index.jsp"><img src="img/che.jpg"></a></div>
	</c:if>	
	<c:if test="${!empty list2}">
			<table >
				<tr>
					<th>商品编号</th><th colspan="2">商品名称</th><th>商品类型</th><th>商品单价</th><th>购买数量</th><th>小计</th><th>操作</th>
				</tr>
	
	
	<c:forEach items="${list2}" var="cart">
				<tr class="td">
					<td>${cart.getGid()}</td><td><img src="img/${cart.getImg()}"/></td><td>${cart.getName()}</td><td>${cart.getType()}</td><td>${cart.getPrice()}</td><td>${cart.getNum()}</td><td>${cart.getPrice()*cart.getNum()}</td>
					<td><a href="CartServlet?opr=del&gid=${cart.getGid()}&type=${cart.getType()}" class="del">删除</a></td>
				</tr>
	</c:forEach>
				<tr>
					<td></td><td></td><td></td><td></td><td>总计：</td><td style="font-size: 24px;font-weight:bold;color: #D2691E;">${total}</td><td colspan="2"><input type="submit" value="结算" id="submit"></td>
				</tr>	
	
				</table>
				</c:if>
				</form>
				<div style="height: 190px"></div>
<%@ include file="footer.jsp" %>
  </body>
</html>
