$(document).ready(function () {
	/*左侧边框鼠标事件开始*/
	$("#left div").hover(
		function(){
			$(this).toggleClass("left1");
		}
	);
	/*左侧边框鼠标事件结束*/
	
	
    /* 右侧滑动开始*/
     var i = 0;
     var clone = $(".right .img li").first().clone();//克隆第一张图片
     $(".right .img").append(clone);//复制到列表最后
     var size = $(".right .img li").size();
               
     for (var j = 0; j < size-1; j++) {
    	 $(".right .num").append("<li></li>");
                }
		 $(".right .num li").first().addClass("on");

     /*自动轮播*/

     var t = setInterval(function () { i++; move();},5000);

     /*鼠标悬停事件*/

     $(".right").hover(function () {
            clearInterval(t);//鼠标悬停时清除定时器
      }, function () {
      t = setInterval(function () { i++; move(); }, 2000); //鼠标移出时清除定时器
      });

       /*鼠标滑入原点事件*/

     $(".right .num li").hover(function () {

     var index = $(this).index();//获取当前索引值
     i = index;
     $(".right .img").stop().animate({ left: -index * 773 }, 773);
     $(this).addClass("on").siblings().removeClass("on");
     });

      /*向左按钮*/
      $(".right .btn_l").click(function () {
          i++;
          move();
        });
 
        /*向右按钮*/
       $(".right .btn_r").click(function () {
            i--;
            move();
        });

       /*移动事件*/
       function move() {
      		 if (i == size) {
      		 $(".right .img").css({ left: 0 });
          	  i = 1;
              }
     		  if (i == -1) {
      		  $(".right .img").css({ left: -(size - 1) * 773 });
    	      i = size - 2;
              }
              $(".right .img").stop().animate({ left: -i * 773 }, 773);

              if (i == size - 1) {
              $(".right .num li").eq(0).addClass("on").siblings().removeClass("on");
              } else {
              $(".right .num li").eq(i).addClass("on").siblings().removeClass("on");
      	      }
           }
       });
	//右侧滑动结束！！