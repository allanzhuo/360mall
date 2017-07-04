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
    
    <title>My JSP 'search.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		*{padding: 0px;margin: 0px;}
	#father{width: 1024px; border: 0px; margin: 0px auto;overflow: hidden;}
	#father dl{ float: left;margin: 10px;border: 1px solid #ccc;width: 224px;height: 280px;}
	dl a{color: black;text-decoration: none;}
	dt img{width: 222px;height: 222px;}
	dd{text-align: center;}
	#empty{padding: 0px 0px 5% 15%;background-color: #f7f7f7;}
	
	</style>

  </head>
  
  <body>
   <%@ include file="header.jsp" %>
     <%request.setAttribute("path", path);%>
  <c:if test="${empty listgoods}">
 	<div id="empty"><img src="img/search.png"/></div>
 	<%@ include file="footer.jsp" %>
  </c:if>
  <c:if test="${!empty listgoods}">
    <div id=father>
    	
    		<c:forEach items="${listgoods}" var="goods">
    		<dl>
    			<dt><a href="GoodsServlet?opr=det&id=${goods.getId()}"><img src="${path}/img/${goods.getImg1()}"/></a></dt>
    			<dd><a href="GoodsServlet?opr=det&id=${goods.getId()}">${goods.getName()}</a></dd>
    			<dd><a href="GoodsServlet?opr=det&id=${goods.getId()}">${goods.getPrice()}元</a></dd>
    		</dl>
    		</c:forEach>
    		</div>
    		<%@ include file="footer.jsp" %>
    	</c:if>
    
  </body>
</html>
