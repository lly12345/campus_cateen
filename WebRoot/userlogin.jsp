<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="description" content="登录">
	<title>
	登录界面
	</title>
	<link rel="shortcut icon" href="https://www.baidu.com/favicon.ico" type="image/x-icon">
	<link rel="icon" sizes="any" mask="" href="https://www.baidu.com/img/baidu.svg">                
	<script async="" src="js/g.min.js" id="new_FIAOWNBFDIQILY"></script>
	<script type="text/javascript">
	            window.wpo={start:new Date*1,pid:109,page:'passport'};
	            var _hmt = _hmt || [];
	        </script>
	<link href="css/login/base.css" type="text/css" rel="stylesheet">        
	<link href="css/login/ui.css" type="text/css" rel="stylesheet">                        
	<link href="css/login/boot_reg_a65c431.css" type="text/css" rel="stylesheet">
	<link href="css/login/reg_new_7ebbf19.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/login/mkd.css">
	
	
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	
	
	<script type="text/javascript" charset="UTF-8" src="js/reg_tangram_7264f63.js"></script>
	<script type="text/javascript" charset="UTF-8" src="js/moonshad1.js"></script>
	<script type="text/javascript" charset="UTF-8" src="js/ld.min.js"></script>
	<script type="text/javascript" charset="UTF-8" src="js/mkd.js"></script>
	<script type="text/javascript" charset="UTF-8" src="js/fingerprint.js"></script>
	<style>.pass-item-placeholder{color: #ABABAB;cursor: text;display: block;font-size: 12px;height: 20px;left: 163px;line-height: 20px;position: absolute;top: 5px;width: 160px;}
	.pass-item-placeholder-inactive{color:#ccc;}</style>
	
    <script language="javascript">
	        function login()//会员登录信息完整的判断
	        {
	           if(document.userLogin.loginname.value=="")
	           {
	               alert("请输入账号");
	               return;
	           }
	           if(document.userLogin.loginpw.value=="")
	           {
	               alert("请输入密码");
	               return;
	           }
	           document.getElementById("indicator").style.display="none";//设置成块级元素，带自动换行
	           loginService.login(document.userLogin.loginname.value,document.userLogin.loginpw.value,1,callback);//判断账号密码是否正确
	        }
	        
	        function callback(data)
			{
			    document.getElementById("indicator").style.display="none";
			    if(data=="no")//账号密码错误，返回fail.jsp页面
			    {			       
			       alert("账号或密码错误");
			    }
			    if(data!="no")//返回的data就是用户的id，当账号密码正确时
			    {			        
			        var url="<%=path %>/site/index.jsp";
			        window.location.href=url;
			    }
			}
	        
    </script>
	
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
		<h3>欢迎登录</h3>
		<p>没有帐号？<a href="userEnroll.jsp" >注册</a></p>
		</div>
		<div class="reg-content tang-pass-reg" id="reg_content">
		<form name="userLogin" method="get" action="">
		
		<p id="TANGRAM__PSP_4__userNameWrapper" class="pass-form-item pass-form-item-userName" style="display:">
			<label for="TANGRAM__PSP_4__userName" id="TANGRAM__PSP_4__userNameLabel" class="pass-label pass-label-userName">账　号</label>
			<input type="text" style="display:none;">
			<input id="TANGRAM__PSP_4__userName" type="text" name="loginname" class="pass-text-input pass-text-input-userName" autocomplete="off" value="" placeholder="请输入帐号">
			<span id="TANGRAM__PSP_4__userName_clearbtn" class="pass-clearbtn pass-clearbtn-userName" style="display: none; visibility: hidden;"></span>
			<span id="TANGRAM__PSP_4__userNameError" class="pass-item-error pass-item-error-userName" style="display: none;"></span>
			<span id="TANGRAM__PSP_4__userNameSucc" class="pass-item-succ pass-item-succ-userName" style="display:none;"></span>
			
		</p>
		
		<input type="password" name="password" style="display:none">
		<p id="TANGRAM__PSP_4__passwordWrapper" class="pass-form-item pass-form-item-password" style="display:">
			<label for="TANGRAM__PSP_4__password" id="TANGRAM__PSP_4__passwordLabel" class="pass-label pass-label-password">密　码</label>
			<input type="password" style="display: none;">
			<input id="TANGRAM__PSP_4__password" type="password" name="loginpw" class="pass-text-input pass-text-input-password" autocomplete="off" value="" placeholder="请输入密码">
			<span id="TANGRAM__PSP_4__password_clearbtn" class="pass-clearbtn pass-clearbtn-password" style="display:none;"></span>
			<span id="TANGRAM__PSP_4__passwordError" class="pass-item-error pass-item-error-password" style="display: none;">
				<span class="pwd-strength nopwd">
					<span class="pwd-strength-sum"><em class="pwd-strength-bg">&nbsp;</em>
						<em class="pwd-strength-sco">&nbsp;</em>
						<span class="pwd-strength-title"></span>
					</span>
					<span class="pwd-strength-detail">请输入密码</span>
				</span>
			</span>
			<span id="TANGRAM__PSP_4__passwordSucc" class="pass-item-succ pass-item-succ-password" style="display:none;"></span>
			<span id="TANGRAM__PSP_4__passwordTip" class="pass-item-tip pass-item-tip-password" style="display:none">
				<span id="TANGRAM__PSP_4__passwordTipText" class="pass-item-tiptext pass-item-tiptext-password">
					<div class="pwd-checklist-wrapper">
						<span class="pwd-checklist-arrow">
							<em class="arrowa">◆</em>
							<em class="arrowb">◆</em>
						</span>
						
					</div>
				</span>
			</span>
			<span class="change-password-type" id="TANGRAM__PSP_4__changePwdType" style="display:none;"></span>
			<span class="new-password-tip" id="TANGRAM__PSP_4__newPwdTip"></span>
		</p>
		
		
		<p id="TANGRAM__PSP_4__errorWrapper" class="pass-generalErrorWrapper">
			<span id="TANGRAM__PSP_4__error" class="pass-generalError"></span>
		</p>
		<p id="TANGRAM__PSP_4__submitWrapper" class="pass-form-item pass-form-item-submit pass-form-item-submit-v5">
		   
			<input id="TANGRAM__PSP_4__submit" type="button"  value="登录" class="pass-button pass-button-submit"  onClick="login()">
			
		</p>
		<img id="indicator" src="<%=path %>/images/loading.gif" style="display:none"/> <!-- 插入载入中动画 -->
		</form></div>
		</div>
		
		</div>
		<div id="foot">
		</div>
		</div>
		
		
</body>
</html>
