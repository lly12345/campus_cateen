<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="Expires" content="0">

    <link rel="stylesheet" href="<%=path %>/css/restaurant/restaurant.css">
    <link rel="stylesheet" href="<%=path %>/css/banner.css">
    <script type="text/javascript" charset="utf-8"  src="<%=path %>/js/jquery.js"></script>
	
	
	<script type="text/javascript" src="js/a标签跳转.js"></script>
	<script type="text/javascript" src="<%=path %>/js/addcart.js"></script> 

	
	<style>.j-addcart{background:url(<%=path %>/images/restaurant/增加.png) 100% no-repeat;background-size:24px 24px;}</style> 
	<style>.minus{background:url(<%=path %>/images/restaurant/减少.png) 100% no-repeat;background-size:24px 24px;}</style>  
	<style type="text/css">
	#footer {
		width: 660px;
		height: 49px;
		margin: 0 auto;
		padding-top: 50px;
		
	}
	#footer p {
	    text-align: center;
	    line-height: normal;
	    text-transform: uppercase;
	    font-size: 10px;
	    color: #FFFFFF;
	}
	.mod-new-reg-logo {
	
	    width: 48px;
	    height: 36px;

	
	}
	#page{margin: 30px auto 0;width: 1000px;}
	
	.clearfix a{color:#888888;}
	.clearfix a:hover{color: #FFDD55;}
	.clearfix li a:active{color: #FFDD55;}
	#toshopcart{height: auto;}
	#toshopcart li {
		display: block;
		font-size: 0;
		content: " ";
		clear: both;
		height: 0;
		border-bottom: 1px solid #E5E5E5;
		margin: 0 10px;
}
#footer a {
    color: #E5FFC4;
}
	
	</style>
	
	    <script type="text/javascript">
	        function buy1()
	        {
	            <c:if test="${sessionScope.userType !=1}">
	                alert("请先登录");
	            </c:if>
	            <c:if test="${sessionScope.userType==1}">
		            if(document.buy.quantity.value=="")
		            {
		                alert("请输入购买数量");
		                return false;
		            }
		            document.buy.submit();
	            </c:if>
	        }
	     
	</script>
	
  </head>
  
  <body style="background-color:#DDDDDD;">

	<!-- 头部 -->
	<div>
		<jsp:include flush="true" page="/site/inc/daohang.jsp"></jsp:include>
	</div>
	<!-- 购物车 -->
	
	
	
<div id="page">
  <div class="inner-wrap">
	<div class="rest-info" style="width:1000px;">

    <div class="right-bar fr clearfix ct-lightgrey">

    <!-- 起送配送那些 -->

    </div>
	  <div class="details">
	    <div class="up-wrap clearfix">
	      <div class="avatar fl">
	        <img class="scroll-loading" src="<%=path %>/site/goods/img/icon01.png" data-src="img/icon01.jpg" data-max-width="106" data-max-height="80" style="width: 106px; height: 79.5px;">
	      </div>
	      <div class="list">
	        <div class="na">
	          
	            <span>庠园食堂</span>
	         
	        </div>
	        
	      </div>
	    </div>
	    
	  </div>
  
</div>

<div class="food-list fl">
		<!-- 右侧 -->

 	<div class="cate-tab-area">
	  <div class="tab-link">
	    <div class="tab-link-inner clearfix">
	      <a href="menu.html" class="tab-item  active">菜单</a>
	      
	    </div>
	  </div>
	
	    <div class="ori-foodtype-nav clearfix">
	      <ul class="clearfix">
	      <c:forEach items="${sessionScope.catelogList}" var="catelog">
	        <li><a href="<%=path %>/goods?type=goodsByCatelog&catelog_id=${catelog.id}">${catelog.name}</a></li>
	      </c:forEach>  
	      </ul>
	    </div>
	  </div>
	
	<div id="food-nav" class="food-nav">	
	
		
		
			<div class="category">
        	<h3 class="title title-1">
        	  <span class="tag-na">菜品信息</span>
        	</h3>
              <div id="foodlist"  class="pic-food-cont clearfix" >
             <form action="<%=path %>/buy?type=addToCart" method="get" name="buy">
              <c:forEach items="${requestScope.goodsList}" var="goods" varStatus="sta">
               
                <div class="j-pic-food pic-food" >  
			    <div class="avatar">
			    <a href="<%=path %>/goods?type=goodsDetailQian&id=${goods.id }">
			      <img src="<%=path %>/${goods.fujian }" class="food-shape scroll-loading" >
			    </a>
			      <div class="description">    图片仅供参考请以实物为准谢谢</div>
			    </div>

			    <div class="np clearfix">
			      <span class="name fl" id="foodname">
			       ${goods.mingcheng}
			      </span>
			    </div>

			    <div class="sale-info clearfix">
			      <div class="sold-count ct-lightgrey">
			     </div>
			
			    </div>

			    <div class="labels clearfix">
			    
			    <!-- 增加或者减少菜品 -->
			    <div>		          
				  <a href="javascript:add(${goods.id});"  class="add fr icon i-addcart j-addcart"></a> 
				  <!-- <span id="${goods.id }" class="pic-food-cart-num fr" style="display:none;">0</span> -->
				  
				  <!-- <a href="javascript:minus(${goods.id});" class="add fr icon i-addcart minus" style="display:none;"></a>  -->
          		  		     
          		</div>  
          		    
			      <div class="price fl">
			          <div class="only" style="float:left;" >¥</div><div class="only">${goods.shichangjia}</div>
			      </div>
			    </div>
  				</div>
  				
  				</c:forEach>
  			   </form>
  			  			
          </div>
                       
		</div>
	
	</div>
</div>
	
		<div style="clear: both;">&nbsp;</div>

	
	
	<div id="footer-bgcontent" style="width: 660px">
	<div id="footer">
		<p><a href="<%=path %>/login.jsp">系统后台</a></p>
	</div>
	</div>
	 
	

<!-- 购物车小部分 -->
	<jsp:include flush="true" page="/site/cart/mycart.jsp"></jsp:include>
</div>
<div id="hide" style="display:none"></div>
</body>
</html>
