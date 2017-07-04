<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>



<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="js/jquery-1.8.3.js" type="text/javascript"></script>
<script  type="text/javascript">
$(function(){
		$("#user").blur(
	function(){
		if($(this).val().length>3&&$(this).val().length<16){
			$("#v1").css("font-size","13px").css("color","#339933");
			$("#v1").html("用户名格式正确！");
			}else{
				$("#v1").css("font-size","13px").css("color","#F00");
				$("#v1").html("格式错误限制4-15长度！");
				}
		}
	);
	var reg=/^[0-9_a-zA-Z]{6,20}$/; //限制输入数字、字母、下划线，6-20长度，不能为空
	
			$("#pass").blur(
	function(){
		if(reg.test($(this).val())){
			$("#v2").css("font-size","13px").css("color","#339933");
			$("#v2").html("密码格式正确！");
			}else{
				$("#v2").css("font-size","13px").css("color","#F00");
			$("#v2").html("密码不可用！限制数字、字母、下划线，6-20长度！");
				}
		}
	);
	
	$("#pass1").blur(
	function(){
if($("#pass").val()==$("#pass1").val()){
			$("#v3").css("font-size","13px").css("color","#339933");
			$("#v3").html("密码一致！");
			}else{
				$("#v3").css("font-size","13px").css("color","#F00");
			$("#v3").html("密码不一致！");
				}

				
		}
	);
	
	
	var reg1=new RegExp("\\d{11}");//11位
	
			$("#phone").blur(
	function(){
		if(reg1.test($(this).val())){
			$("#v4").css("font-size","13px").css("color","#339933");
			$("#v4").html("手机号码格式正确！");
			}else{
				$("#v4").css("font-size","13px").css("color","#F00");
			$("#v4").html("手机号码格式错误！");
				}
		}
	);
		
	$("#tijiao").click(
	function(){
		 if($("#user").val().length>3&&$("#user").val().length<16&&reg.test($("#pass").val())&&$("#pass").val()==$("#pass1").val()&&reg1.test($("#phone").val())){
			$("form").submit();
				}else{
			$("#v6").css("font-size","13px").css("color","#F00").css("text-align","center");
			$("#v6").html("请完善信息再注册！");
					} 
		}
	);

	});
</script>
<style type="text/css">
*{margin:0px;padding:0px;}
#div1{background-color:#fff;padding: 15px 0px 10px 40px;}
#div1 a{color:#CC3333;}
#div1 a:visited{color:#CC3333;}

#div2{background: url("img/register.jpg") -80px -150px no-repeat;}

</style>
<title>无标题文档</title>
</head>

<body>
<div style="width:1349px">
<div id="div1">
<img  src="img/logo_login.png"/>
<span style="margin-left:50px;color:#333; font-weight:bold; font-size:20px">欢迎注册</span>
<span style="margin-left:600px;color:#333; font-weight:bold; font-size:14px">已有账号<a href="login.jsp" style="margin-left:20px;">请登录</a></span>
</div>
<div id="div2">
<form action="UserServlets?opr=reg" method="post">
	<table width="511px" cellspacing="4px" cellpadding="1px" style="margin-left:100px;" >
		  <tr>
		    <td width="103" height="80" style="font-size:13px; font-weight:bold; color:white">请输入用户名</td>
		    <td colspan="2"><input type="text"  style="display:block; width:250px; height:35px; font-size:13px; color:#999" placeholder="限制4~15位"  id="user" name="user"/></td>
		<td width="112" id="v1">&nbsp;</td>
		  </tr>
		  <tr>
		    <td height="74"  style="font-size:13px; font-weight:bold; color:white">请输入密码</td>
		    <td colspan="2"><input type="password" placeholder="限制数字、字母、下划线，6-20长度！"  style="display:block; width:250px; height:35px; font-size:13px; color:#999;" id="pass" name="psw"/></td>
		<td id="v2">&nbsp;</td>
		  </tr>
		  <tr>
		    <td height="73"  style="font-size:13px; font-weight:bold; color:white" >再次输入密码</td>
		<td colspan="2"><input type="password" placeholder="限制数字、字母、下划线，6-20长度！"  style="display:block; width:250px; height:35px" id="pass1"/></td>
		    <td id="v3">&nbsp;</td>
		  </tr>
		  <tr>
		    <td height="85"  style="font-size:13px; font-weight:bold; color:white" >手机号码</td>
		<td colspan="2"><input type="password" placeholder="仅限大陆手机用户"  style="display:block; width:250px; height:35px" id="phone" name="phone"/></td>
		    <td id="v4">&nbsp;</td>
		  </tr>
		  
		  <tr>
		    <td height="44" colspan="4" style="font-size:13px"><input  type="checkbox" checked="checked"/>我已阅读并同意<a href="#">《360用户注册协议》</a></td>
		  </tr>
		  <tr>
		    <td height="55" colspan="4"><img  src="img/zhuce.png" id="tijiao" style="margin-left:30px"/></td>
		  </tr>
		  <tr>
		    <td height="49" colspan="4" id="v6">&nbsp;</td>
		  </tr>
	</table>
</form>
</div>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
