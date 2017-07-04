<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <link rel="stylesheet" href="css/2.css" type="text/css"></link>
 <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
 <script type="text/javascript" src="js/2.js"></script>
 </head>
  
<body>
	<div id="container">
		<div id="top"></div>
        
        <div id="centry">
        <form action="UserServlets?opr=login" method="post">
        	<div id="log">
            	<h3>帐号登录</h3>
                <div id="div1">
                	<input type="text" name="user" class="input" placeholder="手机号/用户名/邮箱" />
                </div>
                <div id="userMes"></div>
                <div class="div" id="div2">
                	<input type="password" name="psw" class="input" placeholder="密码" />
                </div>
                <div id="pswMes"></div>
                <div class="div"><span><a href="#">找回密码？</a></span><span id="span1"><a href="register.jsp">注册账号</a></span></div>
                <div class="div"><input type="submit" value="登&nbsp;录"  id="input3" /></div>
                <div class="div"><span>其他账号登录：<img src="img/qq.gif" />&nbsp;<img src="img/wb.gif" />&nbsp;<a href="adminlogin.jsp"><img src="img/admin.png" /></a></span></div>
            </div>
           </form>
        </div>			
  <%@ include file="footer.jsp" %>
</body>
</html>
