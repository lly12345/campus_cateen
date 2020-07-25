<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <script type='text/javascript' src='<%=path %>/dwr/interface/cartService.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	
	
    
    <script type="text/javascript">
            function delGoodsFromCart(goodsId) //删除购物车里的货物
	        {
	            cartService.delGoodsFromCart(goodsId,callback111);
	        }
           
            function clearCart() //清空购物车
	        {
	            cartService.clearCart(callback111);
	            $("#shopcart").load("/dingcan/goods?type=goodsNew #shopcart");
	        }
           
            function modiNum(goodsId,quantity) //改变购物车里物品的数量
	        {
	            var r1= /^[0-9]*[1-9][0-9]*$/　　//正整数 
	            var val=r1.test(quantity); //quantity为你要判断的字符 执行返回结果 true 或 false
	            if(val==false)
	            {
	                alert("数量必须是数字,请重新输入");
	            }
	            else  //否则调用modiNum函数，改变购物车中物品的数量	
	            {
	                document.getElementById("foodnum").style.display="block";
	                cartService.modiNum(goodsId,quantity,callback111);
	            }
	        }
	        function callback111(data) //判断是否订单符合库存
	        {
	            //document.getElementById("indicator1").style.display="none";
	            if(data=="no")
			    {
			        alert("库存不足");
			    }
			    if(data=="yes")  //够库存，重新加载该页面
			    {
			        document.location.reload(true);
			    }
	        }
	        function pay(){	        
			    <c:if test="${sessionScope.userType !=1}">
	                alert("请先登录");
	            </c:if>
	            <c:if test="${sessionScope.userType==1}">
		            var total = $(".bill").text();
				    var totalprice = parseInt(total);
				    if(totalprice <= 0){
				        alert("请添加商品");
				    }
				    else{
				    	var url="<%=path %>/site/order/orderQueren.jsp"
				        window.location.href=url;
				    }
	            </c:if>
	        
	        
	        }
	        
	        
	        
	        
    </script>
    <style>
		#page-bgtop {
	    	padding-top: 3px;
		}
		#search {
		    float: right;
		    width: 160px;
		    height: 45px;
		}
		#footer-bgcontent {
		   	height: 122px;
		    background: #394144;
		}
		.shopping-cart{bottom: 0;}
		.shopping-cart .order-list {
		    width: 306px;
		    background-color: #FFFFFF;
		}
		.shopping-cart ul td {
		    border-bottom: 1px solid #E5E5E5;
		    margin: 0 10px;
		}
		.entry table{
			 
		    list-style-type: disc;
		    margin-block-start: 1em;
		    margin-block-end: 1em;
		    margin-inline-start: 0px;
		    margin-inline-end: 0px;
		    padding:0px 10px; 
		
		    margin:6px 0px;
		}
		
		.entry table input{
			border-style: none;
			text-align: center;
		}
		.footer .fr a:hover{
			background-color: rgb(255, 221, 85) !important;
			color: white !important;
		}
		
					
	
	</style>
	
  </head>
  
  <body>


  <div id="shopcart">
	<div class="shopping-cart">
		<!-- 右侧 -->
		<div class="order-list">
		
			<div class="title">
	            <span class="fl buy-title">购物车</span>
	  	        <span class="fr dishes"><a href="javascript:clearCart();" class="clear-cart"><i></i>清空菜品</a></span>
  	      	</div>
  	      	
			  	      	
  	      	
			<div class="post">
				<div class="entry">
                    <table width="100%" border="0" cellpadding="2" cellspacing="1" >
						
						<c:forEach items="${sessionScope.cart.items}" var="item">
						<tr bgcolor="#FFFFFF" height="22">
							<td bgcolor="#FFFFFF">${item.value.goods.mingcheng}</td>
							<td><a href="javascript:minus(${item.value.goods.id});" class="add fr icon i-addcart minus" ></a></td>
							<td bgcolor="#FFFFFF" style="padding:0px 10px; ">   
							   <div id="${item.value.goods.id}" class="fl txt-count">${item.value.goods_quantity}</div>
							</td>
							<td bgcolor="#FFFFFF" style="color: #ffa735; padding-left:20px">￥${item.value.goods.tejia * item.value.goods_quantity}</td>
							 
							<!-- <td bgcolor="#FFFFFF" align="center">${item.value.goods.tejia * item.value.goods_quantity}</td> --> 
							<!-- 总金额=特价*数量 -->

						</tr>
						</c:forEach>					     			                 		        
					</table>
					<div class="total">总计<span style="display:inline-block;font-size: 28px; font-weight: bold;">￥</span><span class="bill">${sessionScope.cart.totalPrice}</span></div>
					<div class="footer clearfix">
			          <div class="logo icon fl"></div>
			          <div class="brief-order fl">
			            <span class="count"></span>
			            <span class="price"></span>
			          </div>
			          <div class="fr">
			          <!--  <div id="notpay" class="notpay ready-pay borderradius-2">立即下单</div> -->
			           
			            <a id="topay" class="topay ready-pay borderradius-2" href="javascript:pay();">立即下单</a>
			            
			          </div>
			        </div>
 				</div>
			</div>
		</div>
		
	</div>
</div>	



<script>

$(function () {

 var total = $(".bill").text();
		var totalprice = parseInt(total);
		if (totalprice > 0){
			 $("#topay").css("display", "block");
			 $("#notpay").css("display", "none");
		}
})

function minus(goodid){
	var n = $("#"+goodid).text();
	console.log(goodid);
	console.log(n);
	var num = parseInt(n) - 1;	
	
     if (num <= 0) { 
			//$("#"+goodid).css("display", "none");  
			//$("#"+goodid).next().css("display", "none");
			delGoodsFromCart(goodid);
			$("#shopcart").load("/dingcan/goods?type=goodsNew #shopcart");
			
		}else{
			  		  //每点击一次减一
			//$("#"+goodid).text(num); 
			$.ajax({
		         type: "post",
		         url: "/dingcan/buy?type=addToCart&goods_id="+goodid+"&quantity=-1",
		         dataType: "json",
		         success: function(data){
		             console.log(data);
		          }
		     });
		     $("#shopcart").load("/dingcan/goods?type=goodsNew #shopcart");
	}
}
</script>
</body>
</html>
