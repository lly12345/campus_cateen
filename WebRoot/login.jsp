<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登录</title>
 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css" />

	<style>
	   body{
	    background:url(<%=path %>/img/bg02.jpg);
	   	background-repeat: no-repeat, repeat;
		background-size: 100% 100%;  
	   }
	</style>
	
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	
    <script language="javascript">
	 function check1() //上面引入javascript文件来引入对象处理 #sizer上边距为114像素，右边距自动，下边距0，宽度656px，背景为图片，高度为364px，内容区内容溢出，内容被修剪，并且其余内容是不可见的
	 {                                                                                         
	     if(document.ThisForm.userName.value=="")
		 {
		 	alert("请输入账号");
			document.ThisForm.userName.focus();
			return false;
		 } //如果账号为空提示输入账号，使用focus，使得在点击文本框时获得光标，点击到外边时光标消失 
		 
		 loginService.login(document.ThisForm.userName.value,document.ThisForm.userPw.value,0,callback);  //使用src里面定义的loginService，来实现对账号密码的验证，之后执行callback函数			
	 }
	
	 function callback(data) //账号密码错误，提示账号或密码错误，账号密码正确，提示通过验证，系统登录成功
	 {
	
	    if(data=="no")
	    {
	        alert("账号或密码错误");
	    }
	    if(data=="yes")
	    {
	        alert("通过验证,系统登录成功");
	        window.location.href="<%=path %>/loginSuccess.jsp";
	    }
	 }
   </script>
  </head>
  
  
  <body>
    <div class="container">
        <div class="img">
            <img src="img/img-3.svg" alt="">
        </div>
        <div class="login-box">
            <form method=post name=ThisForm action="<%=path %>/admin/index.jsp">
                <img src="img/avatar.svg" alt="" class="avatar">
                <h2>Welcome</h2>
                <div class="input-group">
                    <div class="icon">
                        <i class="fa fa-user"></i>
                    </div>
                    <div>
                        <input type="text" class="input" name="userName" placeholder="Username">
                    </div>
                </div>
                <div class="input-group">
                    <div class="icon">
                        <i class="fa fa-lock"></i>
                    </div>
                    <div>
                        <input type="password" class="input" name="userPw" placeholder="Password">
                    </div>
                </div>
                <a href="#">Forgot Password?</a>
                <input type="button" class="btn" onClick="check1()" value="Login">
            </form>
        </div>
    </div>
    <a href="https://www.ramostear.com" target="_blank" class="copyright">&copy; Ramostear</a>

    
</body>

</html>
