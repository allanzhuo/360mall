<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<c:if test="${empty list}">
	<%
	String opr = request.getParameter("opr");
	String id = request.getParameter("id");
	if(opr != null&&id != null){
		response.sendRedirect("GoodsServlet?opr="+opr+"&id="+id);
	}else{
		response.sendRedirect("index.jsp");
	}	
	
	 %>
</c:if>
<c:if test="${!empty list}">
<c:forEach items="${list}" var="goods">  
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'detail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <style type="text/css">
#div211{width:416px;height:422px;background-image:url(img/${goods.getImg1()});margin-left:100px;margin-top:50px;}

#div212{margin-left:100px;margin-top:30px;}
			
#div212 img{margin-left:30px;position:absolute; width:62px; height:62px;}
#div22{width: 500px;height: 650px;position: absolute;left: 548px;top: 174px}
					
#haha span{display:block;width:70px;hei30px;text-align:center;line-height:30px;border:#666 solid 1px;float:left;margin-left:20px;}			
#hah2 img{margin-left:30px;position:absolute;top:443px;}			
					
#cuxiao{position:absolute;left:1100px;top:180px;}
					
#cuxiao img{margin-top:10px; width:140px; height:140px;}
table{position: relative;top:30px;}
  </style>
  
  <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  <script type="text/javascript">
 $(function(){
	$("#img1").hover(
	function(){
		$("#div211").css("background-image","url(img/${goods.getImg1()})");
		$(this).css("border-color","#F00").css("border-width","2px").css("border-style","solid");
		},
			function(){
		$(this).css("border-color","#F00").css("border-width","0px").css("border-style","solid");
		}
	);
	
		$("#img2").hover(
	function(){
		$("#div211").css("background-image","url(img/${goods.getImg2()})");
		$(this).css("border-color","#F00").css("border-width","2px").css("border-style","solid");
		},
			function(){
		$(this).css("border-color","#F00").css("border-width","0px").css("border-style","solid");
		}
	);
	
		$("#img3").hover(
	function(){
		$("#div211").css("background-image","url(img/${goods.getImg3()})");
		$(this).css("border-color","#F00").css("border-width","2px").css("border-style","solid");
		},
			function(){
		$(this).css("border-color","#F00").css("border-width","0px").css("border-style","solid");
		}
	);
		$("#img4").hover(
	function(){
		$("#div211").css("background-image","url(img/${goods.getImg4()})");
		$(this).css("border-color","#F00").css("border-width","2px").css("border-style","solid");
		},
			function(){
		$(this).css("border-color","#F00").css("border-width","0px").css("border-style","solid");
		}
	);
	
	
	$("#div1a a").hover(
	function(){
		$(this).css("color","#F00").css("text-decoration","underline");
		},
	
	function(){
		$(this).css("color","#333").css("text-decoration","none");
		}
	
	);
	
	
	

	
	
	$("#1").click(
	function(){
	$(this).css("border-color","#F00").css("border-width","2px").css("border-style","solid");
	$("#2,#3,#4").css("border-color","#666").css("border-width","1px").css("border-style","solid");
		}
	);
	
	
	$("#2").click(
	function(){
		$(this).css("border-color","#F00").css("border-width","2px").css("border-style","solid");
		$("#1,#3,#4").css("border-color","#666").css("border-width","1px").css("border-style","solid");
		}
	);	
	
	$("#3").click(
	function(){
		$(this).css("border-color","#F00").css("border-width","2px").css("border-style","solid");
		$("#1,#2,#4").css("border-color","#666").css("border-width","1px").css("border-style","solid");
		}
	);	

	
	
		
	
	
	$("#jian").click(
	function(){
		if($("#input3").val()>=2){
			$("#input3").val($("#input3").val()-1);
			}
		
		}
	);
	
	
		$("#jia").click(
	function(){
		
			$("#input3").val(parseInt($("#input3").val())+1);
			
		
		}
	);
	$("#jiaru").click(function(){
		$("form").submit();
	});
	
	});
	
  
  </script>
  
  </head>
  
  <body>
   <%@ include file="header.jsp" %>
<div id="div211">
</div>

<div id="div212">
<img id="img1" src="img/${goods.getImg1()}"/>
<img id="img2" src="img/${goods.getImg2()}" style="left:200px" />
<img id="img3" src="img/${goods.getImg3()}" style="left:300px"/>
<img id="img4" src="img/${goods.getImg4()}" style="left:400px"/>
</div>


<div id="div22">
<form action="CartServlet?opr=add&gid=${goods.getId()}&img=${goods.getImg1()}&name=${goods.getName()}&price=${goods.getPrice()}" method="post">
<table width="500" cellspacing="4" cellpadding="1">
  <tr>
    <td height="42" colspan="3" style="font-weight:bold">${goods.getName()}</td>

  </tr>
  
 
  <tr>
    <td height="35" style="font-size:13px; color:#333; width:55px;">价格</td>
    <td style="text-decoration:line-through">￥998</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="47" style="font-size:13px; color:#333;">促销价</td>
    <td style="font-size:19px; font-weight:bold; color:#F00">￥${goods.getPrice()}</td>
    <td></td>
  </tr>
  <tr>
    <td height="36" style="font-size:13px; color:#333">本店活动</td>
    <td style="font-size:13px; color:#F00">满199元减5元,包邮；满1999元减10元,包邮</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="50" style="font-size:13px; color:#333">发货时效</td>
    <td style="font-size:13px; color:#333">当天16时之前的订单当天安排发货，90%的地区次日即可送达（偏远地区除外）</td>
    <td>&nbsp;</td>
  </tr>
  <tr style="text-align:center;">
    <td height="42" style="font-size:13px; color:#333">月销量10</td>
    <td style="font-size:13px; color:#333"><a href="#" style="text-decoration:none; color:#F00">累计评价9529</a></td>
    <td style="font-size:13px; color:#333">送积分19</td>
  </tr>
  <tr id="haha">
    <td height="51" style="font-size:13px; color:#333">颜色</td>
    <td colspan="2">
    <!-- <span id="1" style="font-size:13px; color:#333">阳光白</span>
    <span id="2" style="font-size:13px; color:#333">星空灰</span>
    <span id="3" style="font-size:13px; color:#333">土豪金</span> -->
    <input type="radio" name="color" value="阳光白" checked="checked"/>阳光白
    <input type="radio" name="color" value="星空灰"/>星空灰
    <input type="radio" name="color" value="土豪金"/>土豪金
    
    </td>
    
  </tr>
 
     <tr>
    <td height="59" style="font-size:13px; color:#333">数量</td>
    <td><span style="margin-left:20px; font-weight:bold" id="jian">-</span>
    <input type="text" name="num" value="1" style="color:#666; text-align:center; font-weight:bold" id="input3" size="2px"/>
    <span style="font-weight:bold" id="jia">+</span>
    </td>
    <td>库存${goods.stock}件</td></tr>
    <tr>
    <td height="59" style="font-size:13px; color:#333"></td>
    <td style="font-size:13px; color:#F00"><a href="#"><img src="img/mai.png" /></a></td>
    <td><img src="img/jiaru.jpg" id="jiaru"/></td>
  </tr>
</table>
</form>

</div>
</c:forEach>
</c:if>

<div id="cuxiao">
<span style="color:#333; font-size:13px; text-align:center; font-weight:bold">掌柜热卖</span><br />
<a href="GoodsServlet?opr=det&id=10104"><img src="img/det1.jpg" /></a><br />
<a href="GoodsServlet?opr=det&id=10105"><img src="img/det5.jpg" /></a><br />
<a href="GoodsServlet?opr=det&id=10101"><img src="img/det9.jpg" /></a><br />
<a href="GoodsServlet?opr=det&id=10102"><img src="img/det13.jpg" /></a>
</div>
<div style="height: 190px"></div>
<%@ include file="footer.jsp" %>
  </body>
</html>
