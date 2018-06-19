<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0029)http://b2b2c.wygk.cn/flow.php -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://b2b2c.wygk.cn/">--><base href=".">

<meta name="Keywords" content="">
<meta name="Description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">

<title>购物流程_网软志成B2B2C电商平台系统多用户商城系统模板</title>



<link rel="shortcut icon" href="##">
<link rel="icon" href="##" type="image/gif">
<link href="${ctx}/statics/css/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/wrzc_common.css">
<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/flow.css">
<script type="text/javascript" src="${ctx}/statics/js/jquery-1.6.2.min.js"></script><script type="text/javascript" src="${ctx}/statics/js/jquery.json.js"></script><script type="text/javascript" src="${ctx}/statics/js/transport.js"></script><script type="text/javascript" src="${ctx}/statics/js/common.js"></script><script type="text/javascript" src="${ctx}/statics/js/shopping_flow.js"></script></head>
<body style="cursor: auto;">
<div id="site-nav">
  <div class="sn-container w1210"> 
    <script type="text/javascript" src="${ctx}/statics/js/utils.js"></script><script type="text/javascript" src="${ctx}/statics/js/common.min.js"></script> 
    <font id="login-info" class="sn-login-info"><a class="sn-login main-color" href="http://b2b2c.wygk.cn/user.php" target="_top">yiren</a><em>欢迎您回来！</em>
<a class="sn-register" href="http://b2b2c.wygk.cn/user.php?act=logout" target="_top">退出</a> 
</font>
    <ul class="sn-quick-menu">
      <li class="sn-mytaobao menu-item">
        <div class="sn-menu"> 
          <a class="menu-hd" href="http://b2b2c.wygk.cn/user.php" target="_top" rel="nofollow">我的信息<b></b></a>
          <div id="menu-2" class="menu-bd">
            <div class="menu-bd-panel"> 
            	<a href="##">已买到的宝贝</a> 
                <a href="##">我的地址管理</a> 
            </div>
          </div>
        </div>
      </li>
      <li class="sn-mystores"> 
        <a target="_top" class="sn-stores header-icon main-color" href="http://b2b2c.wygk.cn/user.php?act=follow_shop"><i></i>我关注的店铺</a> 
      </li>
      <li class="sn-cart mini-cart menu"> 
        <a id="mc-menu-hd" class="sn-cart header-icon main-color" href="http://b2b2c.wygk.cn/flow.php" target="_top" rel="nofollow"><i></i>购物车</a> 
      </li>
      <li class="sn-favorite menu-item">
        <div class="sn-menu"> 
          <a class="menu-hd" href="http://b2b2c.wygk.cn/user.php?act=collection_list" target="_top" rel="nofollow">收藏夹<b></b></a>
          <div id="menu-4" class="menu-bd">
            <div class="menu-bd-panel"> 
            	<a href="##">收藏的宝贝</a> 
                <a href="##">收藏的店铺</a> 
            </div>
          </div>
        </div>
      </li>
      <li class="sn-separator"></li>
      <script type="text/javascript">
		function show_qcord(){
			var qs=document.getElementById('sn-qrcode');
			qs.style.display="block";
		}
		function hide_qcord(){
			var qs=document.getElementById('sn-qrcode');
			qs.style.display="none";
		}
	  </script>
      <li class="sn-favorite menu-item">
        <div class="sn-menu"> 
          <a class="menu-hd" href="http://b2b2c.wygk.cn/supplier/privilege.php?act=login" target="_top" rel="nofollow">卖家中心<b></b></a>
          <div id="menu-4" class="menu-bd">
            <div class="menu-bd-panel"> 
            	<a href="##">商家入驻</a> 
                <a href="##">商家中心</a> 
            </div>
          </div>
        </div>
      </li>
      <li class="menu-item">
        <div class="sn-menu"> 
          <a class="menu-hd sn-mobile" href="http://b2b2c.wygk.cn/" target="_top">手机版<b></b></a>
          <div class="menu-bd sn-qrcode" id="menu-5">
           <ul>
            <li class="app_down">
              <a href="##"></a>
			  <p>微信商城</p>
              <img src="${ctx}/statics/images/app.jpg" alt="请用手机浏览器扫描" width="86px" height="240px">               
            </li>                    
          </ul>
          </div>
        </div>
      </li>
    </ul>
  </div>
</div>
<script>
header_login();
function header_login()
{	
	Ajax.call('login_act_ajax.php', '', loginactResponse, 'GET', 'JSON', '1', '1');
}
function loginactResponse(result)
{
	var MEMBERZONE =document.getElementById('login-info');
	MEMBERZONE.innerHTML= result.memberinfo;
}
</script><div class="header w990">
  <div class="mall-logo"><a href="##"><img src="${ctx}/statics/images/logo.gif"></a> </div>
</div>
<div class="block"> 
  <div class="flowstep" style="right:166px;">
    <ol class="flowstep-5">
      <li class="step-first">
        <div class="step-done">
          <div class="step-name">查看购物车</div>
          <div class="step-no"></div>
        </div>
      </li>
      <li>
        <div class="step-done">
          <div class="step-name">拍下商品</div>
          <div class="step-no"></div>
        </div>
      </li>
      <li>
    <div class="step-done">
        <div class="step-name">付款</div>
        <div class="step-no"></div>
    </div>
      </li>
      <li>
        <div class="step-name">确认收货</div>
        <div class="step-no">4</div>
      </li>
      <li class="step-last">
        <div class="step-name">评价</div>
        <div class="step-no">5</div>
      </li>
    </ol>
  </div>
  <div class="flowBox checkBox_jm" style="margin:10px auto 70px auto;">
    <h6 style="text-align:center; height:30px; line-height:30px;color:#C81623;">订单提交成功！</h6>
    <table width="99%" align="center" border="0" cellpadding="15" cellspacing="0" bgcolor="#fff" class="split_order" style="margin:20px auto;">
      <tbody><tr>
        <td style="padding-bottom:10px;">           <table width="100%" align="left" cellpadding="0" cellspacing="0" bgcolor="#fff" style="border:1px solid #eeeeee;border-bottom:none">
                        <tbody><tr>
              <td style="border-bottom:1px solid #eeeeee;padding-left:15px;background:#FAFAFA; width:445px;" height="30">订单号：2018060428604</td>
              <td style="border-bottom:1px solid #eeeeee;background:#FAFAFA">支付宝：¥168.45</td>
              <td style="border-bottom:1px solid #eeeeee;background:#FAFAFA">顺丰速运&nbsp;&nbsp;&nbsp;仅工作日送货</td>
            </tr>
                                  </tbody></table></td>
        </tr>
      
      <tr>
        <td align="center" style="padding-bottom:30px;">           <div style="text-align:center"><input type="button" onclick="window.open(&#39;https://mapi.alipay.com/gateway.do?_input_charset=utf-8&amp;extend_param=isv%5Esh22&amp;logistics_fee=0&amp;logistics_payment=BUYER_PAY_AFTER_RECEIVE&amp;logistics_type=EXPRESS&amp;notify_url=http%3A%2F%2Fb2b2c.wygk.cn%2Frespond.php%3Fcode%3Dalipay&amp;out_trade_no=223241&amp;partner=2088221914367773&amp;payment_type=1&amp;price=168.45&amp;quantity=1&amp;return_url=http%3A%2F%2Fb2b2c.wygk.cn%2Frespond.php%3Fcode%3Dalipay&amp;seller_email=454882888%40qq.com&amp;service=create_direct_pay_by_user&amp;subject=223&amp;sign=9293fa729d3bb5cacedf85d440e4ed2b&amp;sign_type=MD5&#39;)" value="去支付" class="main-btn main-btn-large"></div>                     </td>
      </tr>
    </tbody></table>
    <style>
  		  table.split_order tbody{background:#fff}
          .submit_back a{color:#F00;}
          </style>
  </div>
   
   
</div>
<%@include file="foot.jsp" %>

<script type="text/javascript">
Ajax.call('api/okgoods.php', '', '', 'GET', 'JSON');
//预售
Ajax.call('pre_sale.php?act=check_order', '', '', 'GET', 'JSON');
</script>
<script type="text/javascript" src="${ctx}/statics/js/base.js"></script>	</div>
</div>
<script type="text/javascript" src="${ctx}/statics/js/lib-v1.js"></script> 
<script type="text/javascript">$("#store-selector").Jdropdown();</script> 
<script type="text/javascript">$.jdCalcul([537]);</script> 
<script type="text/javascript">pageConfig.FN_InitContrast();</script>

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
var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
var btn_buy = "购买";
var is_cancel = "取消";
var select_spe = "请选择商品属性";
</script>
</body></html>