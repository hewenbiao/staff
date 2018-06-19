<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "##">
<!-- saved from url=(0039)http://b2b2c.wygk.cn/user.php?act=login -->
<html xmlns="##">

	<head>
		
		<style>
			::-webkit-input-placeholder {
				text-overflow: ellipsis;
				overflow: hidden;
				cursor: text;
				color: gray;
				opacity: 1;
				padding: 0;
				border: 0;
			}
		</style>
		<!--<base href="#">-->
	<!-- 	<base href="#">

		<meta name="Keywords" content="">
		<meta name="Description" content="">
		<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"> -->

		<title>用户登录</title>

		<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/passport.css"/>
		<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/wrzc_common.css"/>
		<script type="text/javascript" src="${ctx}/statics/js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/jquery_email.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/placeholder.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/jquery.json.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/transport.js"></script>
	
	</head>

	<body onclick="wygk_onclick();" style="cursor: auto;">
		<div>
			
			</div>
	
		<script type="text/javascript" src="${ctx}/statics/js/common.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/user.js"></script>

		<script>
			function erweima1(obj, sType) {
				var oDiv = document.getElementById(obj);
				if(sType == 'show') {
					oDiv.style.display = 'block';
				}
				if(sType == 'hide') {
					oDiv.style.display = 'none';
				}
			}
		</script>
		<div class="logo-r">
			<div class="logo-info-r">
				<a href="#"></a><span class="findpw">欢迎登录</span>
				<a href="#"></a>
				<a href="#"></a>
				<div class="user-weixin weixin">
					<span></span>
					<div class="erweima">
						<div class="erweima-inner">
							<i><s>◇</s></i>
							<img alt="微信" src="${ctx}/statics/images/weixin.jpg" width="130" height="130">
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="w">

			<div class="login-wrap" id="entry">
				<div class="login-banner">
					<div class="w990 position-relative">
						<a class="banner-bg" href="#"><img src="${ctx}/statics/images/login-banner.jpg"/></a>

						<div class="login-form">
							<form name="formLogin" action="" method="post" onsubmit="">
								<div class="login-tit">用户登录
									<a class="regist-link main-color" href="#">立即注册 <i>&gt;</i></a>
								</div>
								<div class="form">
									<div class="msg-wrap">
										<div class="msg-error">
											<i class="msg-icon"></i><span id="msg-error-text" class="msg-error-text"></span>
										</div>
									</div>
									<div class="item item-name">
										<i class="icon"></i>
										<input name="username" type="text" class="text" id="username" placeholder="手机号/用户名/邮箱" tabindex="1" value="">
									</div>
									<div class="item item-password">
										<i class="icon"></i>
										<input name="password" type="password" class="text" id="password" placeholder="密码" tabindex="2" value="">
									</div>
									<div class="item item-authcode clearfix" id="o-authcode">
										<div class="item-detail fl">
											<i class="icon"></i>
											<input type="text" id="authcode" name="captcha" class="text text-1" tabindex="3">
										</div>
										<label class="img fl"> 
										<img src="" alt="captcha" style="cursor: pointer; vertical-align:middle;" onclick="this.src=&#39;captcha.php?is_login=1&amp;&#39;+Math.random()"> 
										</label>
									</div>
									<div class="safety" id="autoentry">
										<label for="remember" class="mar-b"><input type="checkbox" value="1" name="remember" id="remember" class="checkbox">请保存我这次的登录信息</label>
										<a class="forget_password fr" href="#">忘记密码？</a>
									</div>
									<div class="login-btn">
										<input type="hidden" name="act" value="act_login">
										<input type="hidden" name="back_act" value="##">
										<input type="submit" name="submit" class="btn-img btn-entry" id="loginsubmit" value="立即登录">
									</div>
									<div class="item-coagent">
										<a href="#"><i class="weixin"></i>微信</a>
										<a href="#"><i class="qq"></i>QQ</a>
										<a href="#"><i class="sina"></i>新浪</a>
										<a href="#"><i class="alipay"></i>支付宝</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
		<%@include file="foot.jsp" %>
	
		<script type="text/javascript">
			var process_request = "正在处理您的请求...";
			var username_chana = "- 用户名不能有中文。";
			var msg_uname_length = "- 用户名不能超过 20 个字符。";
			var username_empty = "- 用户名不能为空。";
			var username_shorter = "- 用户名长度不能少于 3 个字符。";
			var username_invalid = "- 用户名只能是由字母数字以及下划线组成。";
			var password_empty = "- 登录密码不能为空。";
			var password_shorter = "- 登录密码不能少于 6 个字符。";
			var confirm_password_invalid = "- 两次输入密码不一致";
			var email_empty = "- Email 为空";
			var email_invalid = "- Email 不是合法的地址";
			var agreement = "- 您没有接受协议";
			var msn_invalid = "- msn地址不是一个有效的邮件地址";
			var qq_invalid = "- QQ号码不是一个有效的号码";
			var home_phone_invalid = "- 家庭电话不是一个有效号码";
			var office_phone_invalid = "- 办公电话不是一个有效号码";
			var mobile_phone_invalid = "- 手机号码不是一个有效号码";
			var msg_un_blank = "- 用户名不能为空";
			var msg_un_chine = "- 用户名不能为中文";
			var msg_un_length = "- 用户名不得超过14个字符";
			var msg_un_format = "- 用户名含有非法字符";
			var msg_un_registered = "- 用户名已经存在,请重新输入";
			var msg_can_rg = "* 可以注册";
			var msg_email_blank = "- 邮件地址不能为空";
			var msg_email_registered = "- 邮箱已存在";
			var msg_email_format = "- 邮件地址不合法";
			var msg_mobile_phone_blank = "- 手机号码不能为空";
			var msg_mobile_phone_registered = "- 手机号码已存在";
			var msg_mobile_phone_format = "- 手机号码不是一个有效号码";
			var msg_blank = "- 不能为空";
			var no_select_question = "- 您没有完成密码提示问题的操作";
			var passwd_balnk = "* 密码中不能包含空格";
			var msg_email_code_blank = "- 邮箱验证码不能为空";
			var msg_mobile_phone_code_blank = "- 手机验证码不能为空";
			var msg_captcha_blank = "- 验证码不能为空";
			var msg_register_type_blank = "- 注册类型不能为空";
			var username_exist = "用户名 %s 已经存在";

			$(".mcon").height($(".uc_box").height());
		</script>

	</body>

</html>