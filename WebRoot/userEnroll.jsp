<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="description" content="学生注册">
	<title>
	注册账号
	</title>
	<link rel="shortcut icon" href="https://www.baidu.com/favicon.ico" type="image/x-icon">
	              
	
	<script type="text/javascript">
	            window.wpo={start:new Date*1,pid:109,page:'passport'};
	            var _hmt = _hmt || [];
	</script>
	
    <script type="text/javascript">
        function check1()//会员注册界面信息完整判断
	    {
	        if(document.form2.loginname.value=="")
	        {
	            alert("请输入账号");
	            return false;
	        }
	        if(document.form2.loginpw.value=="")
	        {
	            alert("请输入密码");
	            return false;
	        }
	        document.form2.submit();
	    }
    </script>
    	
	<link href="css/login/base.css" type="text/css" rel="stylesheet">        
	<link href="css/login/ui.css" type="text/css" rel="stylesheet">                        
	<link href="css/login/boot_reg_a65c431.css" type="text/css" rel="stylesheet">
	<link href="css/login/reg_new_7ebbf19.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/login/mkd.css">
	

	<style>.pass-item-placeholder{color: #ABABAB;cursor: text;display: block;font-size: 12px;height: 20px;left: 163px;line-height: 20px;position: absolute;top: 5px;width: 160px;}
	.pass-item-placeholder-inactive{color:#ccc;}</style>
	
	</head>  
  <body>
  <div id="wrapper" class="">
		<div id="head">
		</div>
		<div id="nav">
		</div>
	    <div id="content">
		<div class="mod-new-reg-bg">
		  <img src="images/bg5.jpg">
		</div>
		<div class="mod-new-reg-wrapper">
		<div class="mod-new-reg-logo">
			<img src="images/cutlet.png">
		</div>
		
		<div class="mod-new-reg-text">
		
		<h3>校园食堂</h3>
		<p>在线订餐</p>
		</div>
		<div class="mod-new-reg-footer">
		<span class="mod-new-reg-help">
			<span class="mod-new-reg-line"></span>
		</span>
		</div>
		</div>
		<div class="mod-reg clearfix mod-reg- mod-new-reg-content">
		<div class="new-reg-guide-login">
		<h3>欢迎注册</h3>
		<p>已有账号？<a href="userlogin.jsp" >登录</a></p>
		</div>
		<div class="reg-content tang-pass-reg" id="reg_content">
		
		<form name="form2" method="post" action="<%=path %>/user?type=userReg">
		
		<p id="TANGRAM__PSP_4__userNameWrapper" class="pass-form-item pass-form-item-userName" style="display:">
			<label for="TANGRAM__PSP_4__userName" id="TANGRAM__PSP_4__userNameLabel" class="pass-label pass-label-userName">账　号</label>
			<input type="text" style="display:none;">
			<input id="TANGRAM__PSP_4__userName" type="text" name="loginname" class="pass-text-input pass-text-input-userName uName" autocomplete="off" value="" placeholder="6~16位仅支持中英文、数字和下划线">
			<span id="uName" class="pass-item-error pass-item-error-userName" style="display: inline;"></span>
		</p>
		
		
		<p id="TANGRAM__PSP_4__passwordWrapper01" class="pass-form-item pass-form-item-password" style="display:">
			<label for="TANGRAM__PSP_4__password" id="TANGRAM__PSP_4__passwordLabel" class="pass-label pass-label-password">密　码</label>
			<input type="password" style="display: none;">
			<input id="upwd01" type="password" name="loginpw" class="pass-text-input pass-text-input-password" autocomplete="off" value="" placeholder="请输入密码">

			<span id="pwd01" class="pass-item-error pass-item-error-userName" style="display: inline;">
				
				
			</span>
			<span class="change-password-type" id="TANGRAM__PSP_4__changePwdType" style="display:none;"></span>
			<span class="new-password-tip" id="TANGRAM__PSP_4__newPwdTip"></span>
		</p>
		
		<p id="TANGRAM__PSP_4__passwordWrapper02" class="pass-form-item pass-form-item-password" style="display:">
			<label for="TANGRAM__PSP_4__password02" id="TANGRAM__PSP_4__passwordLabel" class="pass-label pass-label-password">确认密码</label>
			<input type="password" style="display: none;">
			<input id="upwd02" type="password" name="loginpwsec" class="pass-text-input pass-text-input-password" autocomplete="off" value="" placeholder="请输入密码">
			<span id="pwd02" class="pass-item-error pass-item-error-userName" style="display: inline;">
			
			</span>
			
			
			<span class="change-password-type" id="TANGRAM__PSP_4__changePwdType" style="display:none;"></span>
			<span class="new-password-tip" id="TANGRAM__PSP_4__newPwdTip"></span>
		</p>
		
		
		<p id="TANGRAM__PSP_4__userNameWrapper" class="pass-form-item pass-form-item-userName" style="display:">
			<label for="TANGRAM__PSP_4__userName" id="TANGRAM__PSP_4__userNameLabel" class="pass-label pass-label-userName">姓　名</label>
			<input type="text" style="display:none;">
			<input id="TANGRAM__PSP_4__userName" type="text" name="name" class="pass-text-input " autocomplete="off" value="" placeholder="请输入姓名">
			<span id="TANGRAM__PSP_4__userName_clearbtn" class="pass-clearbtn pass-clearbtn-userName" style="display: none; visibility: hidden;"></span>
			<span id="TANGRAM__PSP_4__userNameError" class="pass-item-error pass-item-error-userName" style="display: none;"></span>
			<span id="TANGRAM__PSP_4__userNameSucc" class="pass-item-succ pass-item-succ-userName" style="display:none;"></span>
			
		</p>
		<!-- <p id="TANGRAM__PSP_4__verifyCodeSendWrapper" class="pass-form-item pass-form-item-verifyCodeSend">
			<label for="TANGRAM__PSP_4__verifyCode" id="TANGRAM__PSP_4__verifyCodeLabel" class="pass-label pass-label-verifyCode">验证码</label>
			<input id="TANGRAM__PSP_4__verifyCode" type="text" name="verifyCode" class="pass-text-input pass-text-input-verifyCode" autocomplete="off" maxlength="6" placeholder="请输入验证码">
			<span id="TANGRAM__PSP_4__verifyCode_clearbtn" class="pass-clearbtn pass-clearbtn-verifyCode" style="display:none;"></span>
			<input id="TANGRAM__PSP_4__verifyCodeSend" type="button" value="获取验证码" class="pass-button pass-button-verifyCodeSend" autocomplete="off">
			<span id="TANGRAM__PSP_4__verifyCodeError" class="pass-item-error pass-item-error-verifyCodeSend"></span>
			<span id="TANGRAM__PSP_4__verifyCodeSendTip" class="pass-item-tip pass-item-tip-verifyCodeSend"></span>
		</p> -->
		<p id="TANGRAM__PSP_4__errorWrapper" class="pass-generalErrorWrapper">
			<span id="TANGRAM__PSP_4__error" class="pass-generalError"></span>
		</p>
		<p id="TANGRAM__PSP_4__submitWrapper" class="pass-form-item pass-form-item-submit pass-form-item-submit-v5">
			<input id="TANGRAM__PSP_4__submit" type="button" value="注册" class="pass-button pass-button-submit"  onClick="check1()">
		</p>
		</form></div>
		</div>
	
		</div>
		<div id="foot">
		</div>
		</div>
		
		<script type="text/javascript">
			var reg = /^[a-zA-Z0-9_-]{6,16}$/;
			
			var uname = document.querySelector('.uName');
			var span = document.querySelector('#uName');
			var pwd = document.querySelector('#upwd01');
			var pwdspan = document.querySelector('#pwd01');
			var surepwd = document.querySelector('#upwd02');
			var surepwdspan = document.querySelector('#pwd02');
			uname.onblur = function(){
				if(reg.test(this.value)){
					span.style.color = 'green';
					span.innerHTML = '格式正确';					
				}else{
					span.style.color = 'red';
					span.innerHTML = '6~16位仅支持中英文、数字和下划线';
				}
			};
			pwd.onblur = function(){
				if(reg.test(this.value)){
					pwdspan.style.color = 'green';
					pwdspan.innerHTML = '格式正确';					
				}else{
					pwdspan.style.color = 'red';
					pwdspan.innerHTML = '6~16位仅支持中英文、数字和下划线';
				}
				
			};
			
			surepwd.onblur = function(){
				if(this.value == pwd.value){
					surepwdspan.style.color = 'green';
					surepwdspan.innerHTML = '两次密码相同';					
				}else{
					surepwdspan.style.color = 'red';
					surepwdspan.innerHTML = '两次密码输入不一致';
				}
			}
		</script>

</body>
</html>
