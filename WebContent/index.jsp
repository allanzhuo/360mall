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
  <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  <script type="text/javascript" src="js/1.js"></script>
  <link rel="stylesheet" href="css/1.css" type="text/css"></link>
  </head>
  
  <body>
 <%@ include file="header.jsp" %>
  <div id="containter">
  <div id="left">
    <div id="left1">
    <h3><a href="#">360手机</a></h3>
    <span><a href="GoodsServlet?opr=det&id=10105">360N4</a> <a href="GoodsServlet?opr=det&id=10101">360N4S</a> <a href="GoodsServlet?opr=det&id=10102">360Q5<sup><img src="img/new.gif" /></sup></a></span>
    </div>
    <div>
    <h3><a href="#">奇酷手机</a></h3>
    <span><a href="GoodsServlet?opr=det&id=10104">奇酷青春版</a> <a href="#">奇酷旗舰版</a></span>
    </div>
    <div>
    <h3><a href="#">大神手机</a></h3>
    <span><a href="GoodsServlet?opr=det&id=10103">大神f4</a> <a href="#">大神1S</a> <a href="#">大神Plus</a></span>
    </div>
    <div>
    <h3><a href="#">360智能硬件<sup><img src="img/hot.gif" /></sup></a></h3>
    <span><a href="#">儿童手表</a> <a href="#">行车记录仪</a> <a href="#">安全路由</a></span>
    </div>
    <div>
    <h3><a href="#">能源类</a></h3>
    <span><a href="#">移动电源</a> <a href="#">充电器</a> <a href="#">线材</a> <a href="#">电池</a></span>
    </div> 
    <div>
    <h3><a href="#">耳机与音箱</a></h3>
    <span><a href="#">线控耳机</a> <a href="#">蓝牙耳机</a></span>
    </div>
  </div>
 <div class="right">
            <ul class="img">
                <li><a href="#"><img src="img/bg3.png" alt=""/></a></li>
                <li><a href="#"><img src="img/bg4.png" alt="" /></a></li>
                <li><a href="#"><img src="img/bg5.png" alt="" /></a></li>
                <li><a href="#"><img src="img/bg6.png" alt="" /></a></li>
            </ul>
            <ul class="num">
            </ul>
            <div class="btn btn_l">&lt;</div>
            <div class="btn btn_r">&gt;</div>
  </div>
<div id="block1">
  <h3><a href="#">360明星单品</a></h3>
  <ul>
    <li><a href="#"><img src="img/bl1.png" /></a></li>
    <li><a href="#"><img src="img/bl2.png" /></a></li>
    <li><a href="#"><img src="img/bl3.png" /></a></li>
    <li><a href="#"><img src="img/bl4.png" /></a></li>
    <li><a href="#"><img src="img/bl5.png" /></a></li>
  </ul>
  </div>
 <div id="block2">
  <h3><a href="#">精品配件</a></h3>
  <ul>
    <li><a href="#"><img src="img/bl1.png" /></a></li>
    <li><a href="#"><img src="img/bl2.png" /></a></li>
    <li><a href="#"><img src="img/bl3.png" /></a></li>
    <li><a href="#"><img src="img/bl4.png" /></a></li>
    <li><a href="#"><img src="img/bl5.png" /></a></li>
  </ul>
  
  </div>
 </div>
<%@ include file="footer.jsp" %>
</body>
</html>
