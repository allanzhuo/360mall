$(document).ready(function(e) {		
		/*脚标变色代码开始*/
		$("#foot1").mouseover(function(){
		$("#foot1 span,#foot1 p").css("color","#093");
		$(this).css("background-image","url(img/foot1-1.png)");
		$("#foot1").css("border","1px solid #093");
	}).mouseout(function(){
		$("#foot1 p").css("color","#999");
		$("#foot1 span").css("color","#333");
		$(this).css("background-image","url(img/foot1.png)");
		$("#foot1").css("border","1px solid #999");
	});
	
	 $("#foot2").mouseover(function(){
		$("#foot2 span,#foot2 p").css("color","#093");
		$(this).css("background-image","url(img/foot2-2.png)");
		$("#foot2").css("border","1px solid #093");
	}).mouseout(function(){
		$("#foot2 p").css("color","#999");
		$("#foot2 span").css("color","#333");
		$(this).css("background-image","url(img/foot2.png)");
		$("#foot2").css("border","1px solid #999");
	});
	
	 $("#foot3").mouseover(function(){
		$("#foot3 span,#foot3 p").css("color","#093");
		$(this).css("background-image","url(img/foot3-3.png)");
		$("#foot3").css("border","1px solid #093");
	}).mouseout(function(){
		$("#foot3 p").css("color","#999");
		$("#foot3 span").css("color","#333");
		$(this).css("background-image","url(img/foot3.png)");
		$("#foot3").css("border","1px solid #999");
	});
	
	 $("#foot4").mouseover(function(){
		$("#foot4 span,#foot4 p").css("color","#093");
		$(this).css("background-image","url(img/foot4-4.png)");
		$("#foot4").css("border","1px solid #093");
	}).mouseout(function(){
		$("#foot4 p").css("color","#999");
		$("#foot4 span").css("color","#333");
		$(this).css("background-image","url(img/foot4.png)");
		$("#foot4").css("border","1px solid #999");
	});
		/*脚标变色代码结束*/
		
    });
