<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

	
	<script type="text/javascript" src="<%=path %>/js/popup_shuaxin.js"></script>
        
    <script type="text/javascript">
	   function userlogin() //会员登录
       {
            var url="<%=path %>/site/userlogin/userlogin.jsp";
            var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200}); //pop类型为1，内嵌iframe，关闭后不重新加载页面
            pop.setContent("contentUrl",url);
            pop.setContent("title","会员登录");
            pop.build();
            pop.show();
       }
       
       function mycart() //我的购物车
       {
            <c:if test="${sessionScope.userType !=1}">  //判断是否登录了
                  alert("请先登录");
            </c:if>
            
            <c:if test="${sessionScope.userType==1}">
                var url="<%=path %>/site/cart/mycart.jsp";
                window.open(url,"_self");
            </c:if>
       } 
         
       function myorder()
       {
            <c:if test="${sessionScope.userType !=1}">  //判断是否登录了
                  alert("请先登录");
            </c:if>
            
            <c:if test="${sessionScope.userType==1}">
                var url="<%=path %>/buy?type=myorder";
                window.open(url,"_self");
            </c:if>
       } 
    </script>
    
    
    
    
  </head>
  
  <body>
  <div id="header-parent">

    <div id="header">
        <div class="icon">
            <img src="<%=path %>/images/cutlet.png" style="width: auto; height: 90px;">
        </div>
        <div class="nav">
            <ul>
                <li><a href="<%=path %>">菜品信息</a></li>
				<!-- <li><a href="<%=path %>/site/userreg/userreg.jsp">注册会员</a></li>  -->
				<!-- <li><a href="<%=path %>/site/goods/goodsSea.jsp">菜品查询</a></li> -->
				<!--  <li><a href="#" onclick="mycart()">我的购物车</a></li>-->
				<li><a href="#" onclick="myorder()">我的订单</a></li>
				<li><a href="<%=path %>/userlogin.jsp">会员登录</a></li>
				<li><a href="<%=path %>/liuyan?type=liuyanAll">系统留言板</a></li>
            </ul>
        </div>
    </div>

</div>

  </body>
</html>
