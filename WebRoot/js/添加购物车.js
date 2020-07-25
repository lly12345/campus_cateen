$(function () {
	
	var total = 0;      //购物车总金额
	var totalnum = 0;   //商品总份数
	var heigh = -103;  //设置购物车窗口高度
	//加的效果  
	$(".j-addcart").click(function () {  //点击事件，点击加号添加购物车
		
		$(this).nextAll().css("display", "inline-block");    //当份数>0，则将份数和减号按钮显示出来
		var n = $(this).next().text();            //获取商品份数
		var num = parseInt(n) + 1; 					//每点击一次就增加一份
		if (num == 0) { return; } 

		$(this).next().text(num); 
		
		
	});  
})