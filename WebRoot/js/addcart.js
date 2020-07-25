function add(goodid){
	        
    $('#'+goodid).css("display", "inline-block");    //当份数>0，则将份数和减号按钮显示出来
	$("#"+goodid).next().css("display", "inline-block");				
	var n = $("#"+goodid).text();            //获取商品份数
	console.log(goodid);
	var num = parseInt(n) + 1; 					//每点击一次就增加一份
	//console.log(num);
	if (num == 0) { return; } 

	$("#"+goodid).text(num); 
	$.ajax({
         type: "post",
         url: "/dingcan/buy?type=addToCart&goods_id="+goodid+"&quantity=1",
         dataType: "json",
         success: function(data){
             console.log(data);
          }
     });    
     $("#shopcart").load("/dingcan/goods?type=goodsNew #shopcart");		//局部更新
}


 function delGoodsFromCart(goodsId) //删除购物车里的货物
{
    //document.getElementById("indicator1").style.display="block";
    cartService.delGoodsFromCart(goodsId,callback111);
    $("#shopcart").load("/dingcan/goods?type=goodsNew #shopcart");
}




//菜品类别跳转















