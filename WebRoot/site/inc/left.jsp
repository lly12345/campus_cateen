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
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    
    
    
  </head>
  
  <body>
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
					
					
					
					
					
				</li>
			</ul>
  </body>
</html>
