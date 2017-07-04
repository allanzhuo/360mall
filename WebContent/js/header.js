$(document).ready(function () {
	/*导航栏下拉菜单开始*/
	$("#div1").hide();
	$("ul li:eq(1)").hover(
		function(){
			$("#div1").slideToggle();
		}
	);
	$("#div2").hide();
	$("ul li:eq(2)").hover(
		function(){
			$("#div2").slideToggle();
		}
	);
	$("#div3").hide();
	$("ul li:eq(3)").hover(
		function(){
			$("#div3").slideToggle();
		}
	);
	/*导航栏下拉菜单结束*/
	
	/*导航栏搜索框默认内容开始*/
	$(document).ready(function(e) {
	$("#input1").focus(function(){
		if($("#input1").val()=="360手机"){
			$(this).val("");
		}
	}).blur(function(){
		if($("#input1").val()==""){
			$(this).val("360手机");
		}
	});
});
	/*导航栏搜索框默认内容结束*/
});
