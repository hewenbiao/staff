<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://b2b2c.wygk.cn/flow.php?step=checkout -->
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!--<base href="#">-->
		<base href="#">

		<meta name="Keywords" content="">
		<meta name="Description" content="">

		<title>购物流程</title>

		<link rel="shortcut icon" href="#">
		<link rel="icon" href="#">
		<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/flow.css">
		<link rel="stylesheet" type="text/css" href="${ctx}/statics/css/wrzc_common.css">
		<script type="text/javascript" src="${ctx}/statics/js/jquery-1.9.1.min.js"></script>
		<script>
			var pay_balance_id = 4; //保存余额支付的id做为js全局变量
		</script>
		<script type="text/javascript" src="${ctx}/statics/js/jquery.json.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/transport.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/common.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/shopping_flow.js"></script>
	</head>

	<body style="cursor: auto;">

		<div id="popup_window" style="display:none;">
			<div class="pop_head">请输入余额支付密码</div>
			<a class="pop_head_r" href="#"></a>
			<div class="pop-inner">
				<input id="surplus_password_input" class="inputBg inputSmall" type="password">
				<div class="required-notice surplus_password_input_notice" style="position:static;"><i class="notice-icon"></i><span class="notice-text"></span></div>
				<div class="clear"></div>
				<input type="button" onclick="end_input_surplus()" value="确定" class="btn_pay1">
				<input type="button" onclick="cancel_input_surplus()" value="取消" class="btn_pay2">
			</div>
		</div>

		<div id="site-nav">
			<div class="sn-container w1210">
				<script type="text/javascript" src="${ctx}/statics/js/utils.js"></script>
				<script type="text/javascript" src="${ctx}/statics/js/common.min.js"></script>
				<font id="login-info" class="sn-login-info">
					<a class="sn-login main-color" href="#">yiren</a><em>欢迎您回来！</em>
					<a class="sn-register" href="#">退出</a>
				</font>
				<ul class="sn-quick-menu">
					<li class="sn-mytaobao menu-item">
						<div class="sn-menu">
							<a class="menu-hd" href="#">我的信息<b></b></a>
							<div id="menu-2" class="menu-bd">
								<div class="menu-bd-panel">
									<a href="#">已买到的宝贝</a>
									<a href="#">我的地址管理</a>
								</div>
							</div>
						</div>
					</li>
					<li class="sn-mystores">
						<a target="_top" class="sn-stores header-icon main-color" href="#"><i></i>我关注的店铺</a>
					</li>
					<li class="sn-cart mini-cart menu">
						<a id="mc-menu-hd" class="sn-cart header-icon main-color" href="#"><i></i>购物车</a>
					</li>
					<li class="sn-favorite menu-item">
						<div class="sn-menu">
							<a class="menu-hd" href="#">收藏夹<b></b></a>
							<div id="menu-4" class="menu-bd">
								<div class="menu-bd-panel">
									<a href="#">收藏的宝贝</a>
									<a href="#">收藏的店铺</a>
								</div>
							</div>
						</div>
					</li>
					<li class="sn-separator"></li>
					<script type="text/javascript">
						function show_qcord() {
							var qs = document.getElementById('sn-qrcode');
							qs.style.display = "block";
						}

						function hide_qcord() {
							var qs = document.getElementById('sn-qrcode');
							qs.style.display = "none";
						}
					</script>
					<li class="sn-favorite menu-item">
						<div class="sn-menu">
							<a class="menu-hd" href="#">卖家中心<b></b></a>
							<div id="menu-4" class="menu-bd">
								<div class="menu-bd-panel">
									<a href="#">商家入驻</a>
									<a href="#">商家中心</a>
								</div>
							</div>
						</div>
					</li>
					<li class="menu-item">
						<div class="sn-menu">
							<a class="menu-hd sn-mobile" href="#">手机版<b></b></a>
							<div class="menu-bd sn-qrcode" id="menu-5">
								<ul>
									<li class="app_down">
										<a href="#"></a>
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
		<!--<script>
			header_login();

			function header_login() {
				Ajax.call('login_act_ajax.php', '', loginactResponse, 'GET', 'JSON', '1', '1');
			}

			function loginactResponse(result) {
				var MEMBERZONE = document.getElementById('login-info');
				MEMBERZONE.innerHTML = result.memberinfo;
			}
		</script>-->
		<div class="header w990">
			<div class="mall-logo">
				<a href="#"><img src="${ctx}/statics/images/logo.gif"></a>
			</div>
		</div>
		<div class="blank15"></div>
		<div class="block_jm">

			<script>
				function del_address_comfirm(comfirmId) {
					$('.pop-compare,.pop-mask').show();
					$('.pop-compare .pop-text').html('您确认要删除吗？');
					$('.pop-compare').css({
						'top': ($(window).height() - $('.pop-compare').outerHeight()) / 2
					});
					$('.cancel-btn').removeClass('none');
					$('.pop-sure').click(function() {
						del_Address(comfirmId);
					})
				}
			</script>
			<div class="flowstep">
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
						<div class="step-name">付款</div>
						<div class="step-no">3</div>
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
			<div id="bg" class="bg" style="display:none;"></div>
			<script type="text/javascript" src="${ctx}/statics/js/region.js"></script>
			<form action="#" method="post" name="theForm" id="theForm" onsubmit="return checkOrderForm(this)">
				<script type="text/javascript">
					var flow_no_payment = "您必须选定一个支付方式。";
					var flow_no_shipping = "您必须选定一个配送方式。";
				</script>
				<div class="blank15"></div>
				<div class="checkBox_jm clearfix">
					<div class="title">1 地址选择</div>
					<div class="address_jm" id="AddressList">
						<ul>
							<li class="curr" onmouseover="showAddressEdit(this);" onmouseout="showAddressEdit(this);">
								<div style="width:100%;height:100%;" onclick="selAddress(this, 63);">
									<table cellpadding="0" cellspacing="0" width="100%">
										<tbody>
											<tr>
												<td>哈哈<br>北京-北京-东城区&nbsp;东城区,1726475673@qq.com<br>18234256475</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="edit_addr" id="address_edit_0">
									<a href="#">修改</a>
									<a onclick="del_address_comfirm(63)">删除</a>
								</div>
							</li>
							<li onmouseover="showAddressEdit(this);" onmouseout="showAddressEdit(this);" class="xxxxxx">
								<div style="width:100%;height:100%;" onclick="selAddress(this, 64);">
									<table cellpadding="0" cellspacing="0" width="100%">
										<tbody>
											<tr>
												<td>哦他太<br>安徽-安庆-大观区&nbsp;哦啊放入汤<br>15582412512</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="edit_addr" id="address_edit_1">
									<a href="#">修改</a>
									<a onclick="del_address_comfirm(64)">删除</a>
								</div>
							</li>
						</ul>
						<div class="blank10"></div>
						<div class="address_jm_add" onclick="AddressEdit(0);">使用新地址</div>
					</div>
					<div id="popDiv" class="mydiv" style="display:none;">
						<div class="mydiv-l" id="PopAddressTitle">使用新地址</div>
						<div class="mydiv-r" onclick="javascript:closePopDiv()"></div>
						<div id="PopAddressCon"></div>
					</div>
				</div>
				<script type="text/javascript">
					function AddressEdit(aid) {
						if(aid) {
							document.getElementById('PopAddressTitle').innerHTML = '修改地址';
						} else {
							document.getElementById('PopAddressTitle').innerHTML = '使用新地址';
						}
						Ajax.call('flow.php?act=EditAddress', 'address_id=' + aid, AddressEdit_Response, 'GET', 'JSON');
					}

					function AddressEdit_Response(result) {
						var PopAddressCon = document.getElementById('PopAddressCon');
						PopAddressCon.innerHTML = result.content;
						document.getElementById('popDiv').style.display = 'block';
						document.getElementById('bg').style.display = 'block';
					}

					function showPopDiv() {
						document.getElementById('popDiv').style.display = 'block';
						document.getElementById('bg').style.display = 'block';
					}

					function closePopDiv() {
						document.getElementById('popDiv').style.display = 'none';
						document.getElementById('bg').style.display = 'none';
					}

					function showAddressEdit(obj) {
						if(obj.className != 'curr') {
							obj.className = obj.className == 'xxxxxx' ? '' : 'xxxxxx';
						}
					}

					function selAddress(obj, address_id) {
						var addrParent = obj.parentNode;
						var addrYeye = addrParent.parentNode;
						var addrList = addrYeye.getElementsByTagName('li');
						for(i = 0; i < addrList.length; i++) {
							addrList[i].className = '';
						}
						addrParent.className = 'curr';
						Ajax.call('flow.php?act=selAddress', 'address_id=' + address_id, selAddress_response, 'GET', 'JSON');
					}

					function selAddress_response(result) {
						top.location.href = top.location.href;
					}

					function del_Address(address_id) {
						Ajax.call('flow.php?act=delAddress', 'address_id=' + address_id, delAddressResponse, 'GET', 'JSON');
					}

					function delAddressResponse(result) {
						if(result.message) {
							alert(result.message);
						}

						if(result.error == 0) {
							var layer = document.getElementById('AddressList');

							if(layer) {
								layer.innerHTML = result.content;
							}
							if(result.content2) {
								document.getElementById("shippingBox").innerHTML = '<font color="#ff3300">&nbsp;&nbsp;&nbsp;正在重新导入配送区域，请稍候。。。</font>';
								document.getElementById("shippingBox").innerHTML = '<font style="color:#ff3300">配送区域已经变化，请重新选择物流<br><br></font>' + result.content2;
							}
							document.forms['theForm'].elements['have_consignee'].value = result.have_consignee;
						}
					}

					/**
					 * 提交地址信息
					 */
					function submitAddress() {
						var frm = document.forms['theForm'];
						var cmt = new Object;
						cmt.address_id = frm.elements['address_id'].value;
						cmt.consignee = frm.elements['consignee'].value;
						cmt.address = frm.elements['address'].value;
						cmt.email = frm.elements['email'].value;
						cmt.zipcode = frm.elements['zipcode'].value;
						cmt.country = 1; //frm.elements['country'].value;
						cmt.province = frm.elements['province'].value;
						cmt.city = frm.elements['city'].value;
						cmt.district = frm.elements['district'].value;
						cmt.tel = frm.elements['tel_01'].value + "-" + frm.elements['tel_02'].value + (Utils.isEmpty(frm.elements['tel_03'].value) ? "" : "-" + frm.elements['tel_03'].value);
						cmt.mobile = frm.elements['mobile'].value;
						cmt.closediv = frm.elements['closediv'].value;
						cmt.shipping_bian = frm.elements['shipping_bian'].value;
						cmt.optionlength = frm.elements['district'].length;

						if(cmt.consignee.length == 0) {
							$('form[name=theForm]').find('.reciever-notice').html('收件人不能为空').parents('.required-notice').css('visibility', 'visible');
							//alert('收件人不能为空！');
							return false;
						} else {
							$('form[name=theForm]').find('.reciever-notice').html('').parents('.required-notice').css('visibility', 'hidden');
						}
						if(cmt.optionlength > 1) {
							if(cmt.province == '0' || cmt.city == '0' || cmt.district == '0') {
								$('form[name=theForm]').find('.address-notice').html('所在地区不完整').parents('.required-notice').css('visibility', 'visible');
								//alert('所在地区不完整！');
								return false;
							} else {
								$('form[name=theForm]').find('.address-notice').html('').parents('.required-notice').css('visibility', 'hidden');
							}
						} else {
							if(cmt.province == '0' || cmt.city == '0') {
								$('form[name=theForm]').find('.address-notice').html('所在地区不完整').parents('.required-notice').css('visibility', 'visible');
								//alert('所在地区不完整！');
								return false;
							} else {
								$('form[name=theForm]').find('.address-notice').html('').parents('.required-notice').css('visibility', 'hidden');
							}

						}
						if(cmt.email.length > 0 && (!Utils.isEmail(cmt.email))) {
							alert('邮箱地址不正确');
							return false;
						}
						if(cmt.address.length == 0) {
							$('form[name=theForm]').find('.detail-address-notice').html('街道地址不能为空').parents('.required-notice').css('visibility', 'visible');
							//alert('街道地址不能为空！');
							return false;
						} else {
							$('form[name=theForm]').find('.detail-address-notice').html('').parents('.required-notice').css('visibility', 'hidden');
						}

						if(cmt.mobile.length == 0 && (cmt.tel.length == 0 || cmt.tel == '--' || cmt.tel == '-')) {
							$('form[name=theForm]').find('.phone-notice').html('手机号码和固定电话必须填写至少一项').parents('.required-notice').css('visibility', 'visible');
							//alert('手机号码和固定电话必须填写至少一项！');
							return false;
						} else {
							$('form[name=theForm]').find('.phone-notice').html('').parents('.required-notice').css('visibility', 'hidden');
						}
						if(cmt.mobile.length > 0) {
							var reg = /^1[34578][0-9]\d{8}$/;
							if(!Utils.isMobile(cmt.mobile)) {
								$('form[name=theForm]').find('.phone-notice').html('手机号码格式不正确').parents('.required-notice').css('visibility', 'visible');
								//alert('手机号码格式不正确！');
								return false;
							} else {
								$('form[name=theForm]').find('.phone-notice').html('').parents('.required-notice').css('visibility', 'hidden');
							}
						}
						if(cmt.tel.length > 0 && cmt.tel != '--' && cmt.tel != '-') {
							var reg = /^[\d|\-|\s]+$/;
							if(!Utils.isTel(cmt.tel)) {
								$('form[name=theForm]').find('.phone-notice').html('固定电话格式不正确').parents('.required-notice').css('visibility', 'visible');
								//alert('固定电话格式不正确！');
								return false;
							} else {
								$('form[name=theForm]').find('.phone-notice').html('').parents('.required-notice').css('visibility', 'hidden');
							}
						}
						Ajax.call('flow.php?act=saveAddress', 'address=' + $.toJSON(cmt), addressResponse, 'POST', 'JSON');
					}

					/* 处理提交地址的反馈信息  */
					function addressResponse(result) {
						if(result.message) {
							alert(result.message);
						} else {
							top.location.href = top.location.href;
						}
					}
				</script>

				<div class="checkBox_jm">
					<div class="title">2 送货时间 <span class="songhuo">送货时间仅作参考，快递公司会尽量满足您的要求</span></div>
					<div class="timebox">
						<ul>
							<li class="curr" id="time_id_1" onclick="javascript:setTimeSh(&#39;1&#39;);">
								<input id="time_delivery1" type="radio" name="best_time" value="仅工作日送货" checked="checked">
								<label for="time_delivery1">仅工作日送货</label>
							</li>
							<li id="time_id_2" onclick="javascript:setTimeSh(&#39;2&#39;);">
								<input id="time_delivery2" type="radio" name="best_time" value="仅周末送货">
								<label for="time_delivery2">仅周末送货</label>
							</li>
							<li id="time_id_3" onclick="javascript:setTimeSh(&#39;3&#39;)">
								<input id="time_delivery3" type="radio" name="best_time" value="工作日/周末/假日均可">
								<label for="time_delivery3">工作日/周末/假日均可</label>
							</li>
							<li id="time_id_4" style="position:relative;" onmouseover="if(this.className==&#39;curr&#39; || this.className==&#39;curr2&#39;){this.className=&#39;curr&#39;;}else{this.className=&#39;cur2&#39;;}" onmouseout="if(this.className==&#39;curr&#39;){this.className=&#39;curr2&#39;;}else{this.className=&#39;cur&#39;;}" onclick="javascript:setTimeSh(&#39;4&#39;)">
								<input type="radio" name="best_time" value="" id="definetime_input">
								<label for="definetime_input" id="definetime">指定送货时间</label>
								<div class="seltimebox" id="seltimebox">
									<table cellpadding="0" cellspacing="0" width="100%">
										<tbody>
											<tr bgcolor="#ffffff">
												<td><span>时间段</span></td>
												<td align="center"><span>06-04<br>今天</span></td>
												<td align="center"><span>06-05<br>周二</span></td>
												<td align="center"><span>06-06<br>周三</span></td>
												<td align="center"><span>06-07<br>周四</span></td>
												<td align="center"><span>06-08<br>周五</span></td>
												<td align="center"><span>06-09<br>周六</span></td>
												<td align="center"><span>06-10<br>周日</span></td>
											</tr>
											<tr bgcolor="#ffffff">
												<td><span>9:00--15:00</span></td>
												<td align="center">&nbsp;</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
											</tr>
											<tr bgcolor="#ffffff">
												<td><span>15:00--19:00</span></td>
												<td align="center">&nbsp;</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
											</tr>
											<tr bgcolor="#ffffff">
												<td><span>19:00--22:00</span></td>
												<td align="center">&nbsp;</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
												<td align="center">
													<a href="#">可选</a>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</li>
						</ul>
					</div>
					<div class="blank"></div>
				</div>
				<script>
					$(function() {
						$('#seltimebox a').click(function() {
							$('#seltimebox a').removeClass('current').html('可选');
							$(this).addClass('current').html('已选');
						})
					})
				</script>

				<div class="checkBox_jm">
					<div class="title">3 商品清单</div>
					<table border="0" cellpadding="0" cellspacing="0" width="100%" class="checkgoods">
						<tbody>
							<tr>
								<th width="50%" align="left" class="tdone">商品</th>
								<th>数量</th>
								<th>单价</th>
								<th>小计</th>
							</tr>
							<tr>
								<td colspan="4" style="background:#FAFAFA; border-top:1px solid #eee; font-weight:bold; padding:5px 10px;"> 网站自营</td>
							</tr>
							<tr>
								<td width="50%" style="border-top:none;">
									<div class="thumb_name">
										<dl>
											<dt> <a href="#"><img src="${ctx}/statics/images/200_thumb_G_1437534571298.jpg" style="border:1px solid #eeeeee;" title="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金"></a> </dt>
											<dd>
												<a href="#">爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金</a> <br>
												<font class="attrname"></font>

											</dd>
										</dl>
									</div>

								</td>
								<td align="center" style="border-top:none;">1</td>
								<td align="center" class="price_font" style="border-top:none;">¥83.30</td>
								<td align="center" class="price_font" style="border-top:none;">¥83.30</td>
							</tr>
							<tr>
								<td width="50%">
									<div class="thumb_name">
										<dl>
											<dt> <a href="#"><img src="${ctx}/statics/images/51_thumb_G_1437519866381.jpg" style="border:1px solid #eeeeee;" title="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装"></a> </dt>
											<dd>
												<a href="#">高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装</a> <br>
												<font class="attrname">尺码:XL <br> 颜色:棕色 <br>
												</font>

											</dd>
										</dl>
									</div>

								</td>
								<td align="center">1</td>
								<td align="center" class="price_font">¥169.15</td>
								<td align="center" class="price_font">¥169.15</td>
							</tr>

							<tr>
								<td colspan="4" bgcolor="#ffffff" align="right" style="padding:12px 15px 12px 0;">根据优惠活动
									<a href="#">
										<font color="red">满199元减99元</font>
									</a>，您可以享受折扣 ¥99.0</td>
							</tr>

							<tr>
								<td colspan="4" bgcolor="#ffffff" align="left" class="shipping_type">
									<ul class="shipping_jm">
										<li>
											<input type="hidden" name="pay_ship[0]" id="pay_ship_0" class="shipping" value="3">
											<a id="ship_0_3" title="江、浙、沪地区首重15元/KG，续重2元/KG，其余城市首重20元/KG 运费¥15.00 " class="shipping_type shipping_type_curr pay_ship0" onclick="$(&#39;#pay_ship_0&#39;).val(3);selectShipping(3,0);$(&#39;.pay_ship0&#39;).removeClass(&#39;shipping_type_curr&#39;);$(this).addClass(&#39;shipping_type_curr&#39;);">
												<!--注意：如果选中的是当前的配送，注意a标签的变化，变化为<a class="shipping_type shipping_type_curr">-->
												<label>
				普通快递			</label>
											</a>
										</li>
									</ul>

									<span id="picktxt0"></span>

									<p class="shipping_desc" id="desc_0">江、浙、沪地区首重15元/KG，续重2元/KG，其余城市首重20元/KG 运费¥15.00 </p>
									<script>
										selectShipping($('#pay_ship_0').val(), 0);
									</script>
								</td>
							</tr>
							<tr>
								<td colspan="4" bgcolor="#ffffff" align="left" style="padding:12px 0 12px 30px;">
									<div class="checkout_other">
										<a class="jmbag" href="#"><span>+</span>使用店铺优惠券</a>
										<table class="subbox_other sub_bonus" width="100%">
											<tbody>
												<tr>
													<td align="right" width="120">使用店铺优惠券：</td>
													<td>
														<select name="bonus[0]" onchange="changeBonus(this.value,0)" id="ECS_BONUS_0" class="otherinput">
															<option value="0" selected="">请选择</option>
															<option value="383">线上领取红包2222[¥19.00]</option>
															<option value="384">线上领取红包2222[¥19.00]</option>
															<option value="385">线上领取红包2222[¥19.00]</option>
															<option value="386">线上领取红包2222[¥19.00]</option>
															<option value="387">线上领取红包2222[¥19.00]</option>
															<option value="388">线上领取红包2222[¥19.00]</option>
															<option value="389">线上领取红包2222[¥19.00]</option>
															<option value="390">线上领取红包2222[¥19.00]</option>
															<option value="391">线上领取红包2222[¥19.00]</option>
															<option value="392">线上领取红包2222[¥19.00]</option>

														</select>
													</td>
													<td>&nbsp; 或 &nbsp;
														<a href="#">直接输入优惠券号</a>
													</td>
													<td><label id="Bonus_span_0" style="display:none;">
                      <input name="bonus_sn[0]" id="bonus_sn_0" type="text" size="15" value="输入优惠券" onfocus="if (value ==&#39;输入优惠券&#39;){value =&#39;&#39;}" onblur="if (value ==&#39;&#39;){value=&#39;输入优惠券&#39;}" class="input_addr2">
                      <input name="validate_bonus" type="button" value="使用" onclick="validateBonus(document.getElementById(&#39;bonus_sn_0&#39;).value,0)" class="BonusButton">
                    </label></td>
												</tr>

											</tbody>
										</table>
									</div>
								</td>
							</tr>

						</tbody>
					</table>
					<table border="0" cellpadding="0" cellspacing="0" width="100%" class="checkgoods" style="border-top:0;">
						<tbody>
							<tr>
								<td colspan="4" class="tdother2">
									<div class="checkout_other">
										<a class="jmbag" href="#"><span>+</span>开发票</a>

										<table class="subbox_other" width="100%">
											<tbody width="100%" cellpadding="5" cellspacing="0">
												<tr>
													<td align="right"><label class="mar-b" for="ECS_NEEDINV"><input name="need_inv" type="checkbox" id="ECS_NEEDINV" onclick="changeNeedInv()" value="1" class="checkbox">开发票：</label></td>
													<td align="left" colspan="2">
														<select name="inv_type" id="ECS_INVTYPE" disabled="true" onchange="changeNeedInv()" class="select fl">
															<option value="0">请选择发票类型</option>

															<option value="normal_invoice">普通发票 [1%]</option>
															<option value="vat_invoice">增值税发票 [1.5%]</option>
														</select>
														&nbsp;&nbsp;
														<select name="inv_content" id="ECS_INVCONTENT" disabled="true" onchange="changeNeedInv()" class="select fl">
															<option value="0">请选择发票内容</option>

															<option value="明细">明细</option>
															<option value="办公用品">办公用品</option>
															<option value="电脑配件">电脑配件</option>
															<option value="耗材">耗材</option>
															<option value="其他">其他</option>

														</select>
													</td>
												</tr>
											</tbody>

											<tbody id="vat_invoice_tbody" style="display:none;" width="100%" cellpadding="5" cellspacing="0">
												<tr>
													<td colspan="3" align="left"><strong style="font-size:16px;">公司信息</strong></td>
												</tr>
												<tr>
													<td align="right"><em style="color:#e4393c">*</em>单位名称：</td>
													<td colspan="2"><input name="vat_inv_company_name" type="text" class="otherinput2"></td>
												</tr>
												<tr>
													<td align="right"><em style="color:#e4393c">*</em>纳税人识别号：</td>
													<td width="300" style="width:300px;"><input name="vat_inv_taxpayer_id" type="text" onblur="javascript:check_taxpayer_id(this,&quot;taxpayer_notice&quot;)" class="otherinput2"></td>
													<td>&nbsp;<span id="taxpayer_notice" style="font-size:12px;color:#f00;"></span></td>
												</tr>
												<tr>
													<td align="right"><em style="color:#e4393c">*</em>注册地址：</td>
													<td colspan="2"><input name="vat_inv_registration_address" type="text" class="otherinput2"></td>
												</tr>
												<tr>
													<td align="right"><em style="color:#e4393c">*</em>注册电话：</td>
													<td colspan="2"><input name="vat_inv_registration_phone" type="text" class="otherinput2"></td>
												</tr>
												<tr>
													<td align="right"><em style="color:#e4393c">*</em>开户银行：</td>
													<td colspan="2"><input name="vat_inv_deposit_bank" type="text" class="otherinput2"></td>
												</tr>
												<tr>
													<td align="right"><em style="color:#e4393c">*</em>银行账户：</td>
													<td><input name="vat_inv_bank_account" type="text" onblur="javascript:check_bank_account(this,&quot;bank_account_notice&quot;)" class="otherinput2"></td>
													<td>&nbsp;<span id="bank_account_notice" style="font-size:12px;color:#f00;"></span></td>
												</tr>
												<tr>
													<td colspan="3" align="left" style="padding:10px 0px"><strong style="font-size:16px;">收票人信息</strong></td>
												</tr>
												<tr>
													<td align="right"><em style="color:#e4393c">*</em>收票人姓名：</td>
													<td colspan="2"><input name="inv_consignee_name" type="text" class="otherinput2"></td>
												</tr>
												<tr>
													<td align="right"><em style="color:#e4393c">*</em>收票人手机：</td>
													<td><input name="inv_consignee_phone" type="text" onblur="javascript:check_phone_number(this,&quot;phone_number_notice&quot;)" class="otherinput2"></td>
													<td>&nbsp;<span id="phone_number_notice" style="font-size:12px;color:#f00;"></span></td>
												</tr>
												<tr>
													<td align="right"><em style="color:#e4393c">*</em>收票人省份：</td>
													<td colspan="2"><input type="hidden" name="country" value="1">
														<select name="inv_consignee_province" id="selProvinces" onchange="region.changed(this, 2, &#39;selCities&#39;);">
															<option value="0">请选择省</option>
															<option value="2">北京</option>
															<option value="3">安徽</option>
															<option value="4">福建</option>
															<option value="5">甘肃</option>
															<option value="6">广东</option>
															<option value="7">广西</option>
															<option value="8">贵州</option>
															<option value="9">海南</option>
															<option value="10">河北</option>
															<option value="11">河南</option>
															<option value="12">黑龙江</option>
															<option value="13">湖北</option>
															<option value="14">湖南</option>
															<option value="15">吉林</option>
															<option value="16">江苏</option>
															<option value="17">江西</option>
															<option value="18">辽宁</option>
															<option value="19">内蒙古</option>
															<option value="20">宁夏</option>
															<option value="21">青海</option>
															<option value="22">山东</option>
															<option value="23">山西</option>
															<option value="24">陕西</option>
															<option value="25">上海</option>
															<option value="26">四川</option>
															<option value="27">天津</option>
															<option value="28">西藏</option>
															<option value="29">新疆</option>
															<option value="30">云南</option>
															<option value="31">浙江</option>
															<option value="32">重庆</option>
															<option value="33">香港</option>
															<option value="34">澳门</option>
															<option value="35">台湾</option>
														</select>
														<select name="inv_consignee_city" id="selCities" onchange="region.changed(this, 3, &#39;selDistricts&#39;);">
															<option value="0">请选择</option>
														</select>
														<select name="inv_consignee_district" id="selDistricts" style="display:none;">
															<option value="0">请选择</option>
														</select>
													</td>
												</tr>
												<tr>
													<td align="right"><em style="color:#e4393c">*</em>详细地址：</td>
													<td colspan="2"><input name="inv_consignee_address" type="text" class="otherinput2"></td>
												</tr>
											</tbody>

											<tbody id="normal_invoice_tbody" style="display:none">
												<tr>
													<td align="right">发票抬头：</td>
													<td colspan="2"><input id="individual_inv" type="radio" onclick="changeNeedInv()" name="inv_payee_type" value="individual" checked="true" style="vertical-align:middle">
														<label for="individual_inv" style="vertical-align:middle">个人</label>
														<input id="unit_inv" type="radio" onclick="changeNeedInv()" name="inv_payee_type" value="unit" style="vertical-align:middle">
														<label for="unit_inv" style="vertical-align:middle">单位</label> &nbsp;&nbsp;
														<input id="ECS_INVPAYEE" name="inv_payee" class="otherinput2" style="display:none; vertical-align:middle" disabled=""></td>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="4" class="tdother2">
									<div class="checkout_other">
										<a class="jmbag" href="#"><span>+</span>缺货处理</a>
										<table class="subbox_other" width="100%">

											<tbody width="100%" cellpadding="5" cellspacing="0">
												<tr>
													<td align="right" width="100">缺货处理：</td>
													<td colspan="4">
														<label>
                          <input name="how_oos" type="radio" value="0" checked="" onclick="changeOOS(this)">
                          等待所有商品备齐后再发</label>

														<label>
                          <input name="how_oos" type="radio" value="1" onclick="changeOOS(this)">
                          取消订单</label>

														<label>
                          <input name="how_oos" type="radio" value="2" onclick="changeOOS(this)">
                          与店主协商</label>

													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="4" class="tdother2">
									<div class="checkout_other">
										<a class="jmbag" href="#"><span>+</span>订单留言</a>
										<table class="subbox_other" width="100%">
											<tbody width="100%" cellpadding="5" cellspacing="0">
												<tr>
													<td align="right" width="100" valign="top">订单留言：</td>
													<td colspan="4"><textarea name="postscript" cols="80" rows="3" id="postscript" class="textarea"></textarea></td>
												</tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>
							<script type="text/javascript">
								var fapiao_con = document.getElementById('ECS_INVCONTENT');
								if(fapiao_con.value == '0') {
									document.getElementById('ECS_INVPAYEE').disabled = true;
								} else {
									document.getElementById('ECS_INVPAYEE').disabled = false;
								}
							</script>
							<tr>
								<td colspan="4" class="tdother2">
									<div class="allow_user_surplus">
										<p>
											<label class="is_user_surplus" for="issurplus"><input type="checkbox" id="issurplus" onclick="checkboxOnclick(this)" style="vertical-align:middle; cursor:pointer"> 使用账户余额支付</label>
										</p>
										<div id="allow_user_surplus">
											<span class="surplus_desc">
					<input name="surplus" type="text" class="surplus" id="ECS_SURPLUS" value="0" onblur="changeSurplus(this.value);">&nbsp;&nbsp;元</span> 您当前的可用余额为
											<span class="your_surplus">601.11 </span>
											<span id="ECS_SURPLUS_NOTICE_0" class="notice"></span>
											<span class="open_surplus">点此<a href="#">开启余额安全支付</a></span> </div>
										<script type="text/javascript">
											function checkboxOnclick(checkbox) {
												var surplus = 601.11;
												if(checkbox.checked == true) {
													document.getElementById("allow_user_surplus").style.display = "block";
													changeSurplus(surplus);
												} else {
													document.getElementById("allow_user_surplus").style.display = "none";
													changeSurplus(0);
												}
											}
										</script>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="blank10"></div>
					<table cellpadding="0" cellspacing="0" width="100%">
						<tbody>
							<tr>
								<td align="right">
									<div id="ECS_ORDERTOTAL">
										<script type="text/javascript" src="${ctx}/statics/js/transport.js"></script>
										<script type="text/javascript" src="${ctx}/statics/js/utils.js"></script>
										<div id="ECS_ORDERTOTAL">

											<table width="99%" align="center" border="0" cellpadding="1" cellspacing="1" bgcolor="#ffffff">

												<tbody>
													<tr>
														<td align="right" bgcolor="#ffffff">
															该订单完成后，您将获得
															<font class="main-color">¥0.00</font>的红包。
														</td>
													</tr>
													<tr>
														<td align="right" bgcolor="#ffffff">
															商品总价:
															<font class="main-color">¥252.45</font>
															- 折扣:
															<font class="main-color">¥99.00</font>
															+ 配送费用:
															<font class="main-color">¥15.00</font>
														</td>
													</tr>
													<tr>
														<td align="right" bgcolor="#ffffff"> 应付款金额：
															<font class="main-color" style="font-size:18px;font-family:微软雅黑;">¥168.45</font>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<script type="text/javascript">
					function showCheckoutOther(obj) {
						var otherParent = obj.parentNode;
						otherParent.className = (otherParent.className == 'checkout_other') ? 'checkout_other2' : 'checkout_other';
						var spanzi = obj.getElementsByTagName('span')[0];
						spanzi.innerHTML = spanzi.innerHTML == '+' ? '-' : '+';
					}
				</script>

				<div class="checkBox_jm" id="pay_div">
					<div class="title">4 支付方式</div>
					<ul class="payment_tab_jm" id="payment_tab">

						<li onclick="selPayment(this)">
							<input type="radio" iscod="1" ispickup="" onclick="selectPayment(this)" name="payment" value="6">
							<strong></strong> 货到付款 </li>

						<li onclick="selPayment(this)">
							<input type="radio" onclick="selectPayment(this)" iscod="0" name="payment" id="payment_other_input" value="0"> &nbsp;支付宝/快钱/财付通/其他支付
							<div class="payment_subbox">
								<ul>

									<li>
										<label for="payment_other1">
                    <input id="payment_other1" type="radio" name="payment_other" onclick="selectPayment(this);document.getElementById(&#39;payment_other_input&#39;).value=this.value;" value="1">
                    <img align="absmiddle" src="${ctx}/statics/images/pay_alipay.gif" alt="支付宝">
                </label>
									</li>

									<li>
										<label for="payment_other2">
                    <input id="payment_other2" type="radio" name="payment_other" onclick="selectPayment(this);document.getElementById(&#39;payment_other_input&#39;).value=this.value;" value="2">
                    <img align="absmiddle" src="${ctx}/statics/images/pay_tenpay.gif" alt="财付通">
                </label>
									</li>

									<li>
										<label for="payment_other4">
                    <input id="payment_other4" type="radio" name="payment_other" onclick="selectPayment(this);document.getElementById(&#39;payment_other_input&#39;).value=this.value;" value="5">
                    <img align="absmiddle" src="${ctx}/statics/images/pay_ChinaPay.gif" alt="银联在线">
                </label>
									</li>

									<li>
										<label for="payment_other6">
                    <input id="payment_other6" type="radio" name="payment_other" onclick="selectPayment(this);document.getElementById(&#39;payment_other_input&#39;).value=this.value;" value="7">
                    <img align="absmiddle" src="${ctx}/statics/images/pay_weixin.gif" alt="微信支付">
                </label>
									</li>

									<li>
										<label for="payment_other7">
                    <input id="payment_other7" type="radio" name="payment_other" onclick="selectPayment(this);document.getElementById(&#39;payment_other_input&#39;).value=this.value;" value="8">
                    <img align="absmiddle" src="${ctx}/statics/images/pay_bank.gif" alt="银行汇款/转帐">
                </label>
									</li>

								</ul>
							</div>
						</li>
					</ul>
				</div>
				<script type="text/javascript">
					function setTimeSh(id) {
						for(i = 1; i <= 4; i++) {
							document.getElementById('time_id_' + i).className = '';
						}
						var timeid = document.getElementById('time_id_' + id);
						timeid.className = 'curr';
					}

					function selTimeSh(obj) {
						document.getElementById('definetime_input').checked = true;
						document.getElementById('definetime').innerHTML = "指定送货时间 <font class='main-color'>" + obj.name + "</font>";
						document.getElementById('definetime_input').value = "指定送货时间 " + obj.name;
					}

					function selPayment(obj) {
						var con_country = document.forms['theForm'].elements['have_consignee'].value;
						if(con_country == '0') {
							alert('请先选择配送地址！');
							obj.checked = false;
							return;
						}
						var paymentList = obj.getElementsByTagName('input');
						if(paymentList[0].disabled != true) {
							var payParent = obj.parentNode;
							var payList = payParent.getElementsByTagName('li');
							for(i = 0; i < payList.length; i++) {
								payList[i].className = '';
							}
							obj.className = 'seled';

							for(var i = 0; i < paymentList.length; i++) {
								if(paymentList[i].name == 'payment' && !paymentList[i].disabled) {
									paymentList[i].checked = true;
								}
							}
						}
					}
				</script>
				<div class="flowBox_jm clearfix" style="border:none;padding-bottom:20px;">
					<div style="float:left;width:40%;padding:8px 0; padding-left:5px;">
						<a href="#">返回修改购物车</a>
					</div>
					<div style="float:right;width:55%;text-align:right;padding:8px 20px;">

						<input onclick="return check_before_submit()" type="image" src="${ctx}/statics/images/btn_done.png" align="absmiddle">

						<input name="need_inv" style="display:none;" type="checkbox" class="input" id="ECS_NEEDINV" onclick="changeNeedInv()" value="1" checked="true">
						<input type="hidden" name="step" value="done">
						<input type="hidden" name="have_consignee" value="1">
					</div>
				</div>
				<div class="blank10"></div>
			</form>
			<script>
				if(document.getElementById('shipping_3')) {
					document.getElementById('shipping_3').click();
				}
			</script>

			<div class="blank15"></div>
		</div>
		<script type="text/javascript" src="${ctx}/statics/js/arrive_notice.js"></script>
		<div class="tell-me-form" style="display: none; left: 701.5px; top: 271px;" id="tell-me-table">
			<div class="pop-header"><span>到货通知</span>
				<a href="#"></a>
			</div>
			<div class="tell-me-content">
				<table cellpadding="0" cellspacing="0" width="100%" border="0">
					<tbody>
						<tr>
							<td colspan="2" align="left">
								<div class="blank10"></div>
								<div class="notice-note">
									<p class="main-color" id="rgoods_name"></p>
									当商品进行补货时，我们将以短信、邮件的形式通知您，最多发送一次，不会对您造成干扰。
								</div>
							</td>
						</tr>
						<tr>
							<td width="30%" align="right">
								<font class="main-color">*</font>数量：</td>
							<td align="left">
								<input type="text" value="1" id="book-number" class="inputBg">
								<div class="tell-me-notice">
									<i class="notice-icon"></i><span class="notice-text num-notice"></span>
								</div>
							</td>
						</tr>
						<tr>
							<td align="right">
								<font class="main-color">*</font>手机号码：</td>
							<td align="left">
								<input type="text" value="" id="phone-num" class="inputBg">
								<div class="tell-me-notice">
									<i class="notice-icon"></i><span class="notice-text phone-notice"></span>
								</div>
							</td>
						</tr>
						<tr>
							<td align="right">
								<font class="main-color">*</font>电子邮箱：</td>
							<td align="left">
								<input type="text" value="" id="arrival-email" class="inputBg">
								<div class="tell-me-notice">
									<i class="notice-icon"></i><span class="notice-text email-notice"></span>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center" style="padding:20px 0 30px;">
								<input type="button" value="马上提交" onclick="tell_me1(51)" class="sure-btn">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<script type="text/javascript" src="${ctx}/statics/js/user.js"></script>
		<div class="right-sidebar-con">
			<div class="right-sidebar-main">
				<div class="right-sidebar-panel">
					<div id="quick-links" class="quick-links">
						<ul>
							<li class="quick-area quick-login">
								<a href="#"><i class="setting"></i></a>
								<div class="sidebar-user quick-sidebar">
									<i class="arrow-right"></i>
									<div class="sidebar-user-info">
										<div class="user-have-login">
											<div class="user-pic">
												<div class="user-pic-mask"></div>
												<img src="${ctx}/statics/images/people.gif">
											</div>
											<div class="user-info">
												<p>用户名：yiren</p>
												<p>级　别：钻石会员</p>
											</div>
										</div>
										<p class="mt10">
											<a class="btn order-btn" href="#">订单中心</a>
											<a class="btn account-btn" href="#">帐户中心</a>
										</p>
									</div>
								</div>
							</li>
							<li class="sidebar-tabs">
								<a href="#"><i class="bonus"></i></a>
								<div class="popup">
									<font>领红包再购物</font>
									<i class="arrow-right"></i>
								</div>
							</li>
							<li class="sidebar-tabs">
								<div class="cart-list quick-links-a" id="collectBox">
									<i class="cart"></i>
									<div class="span">购物车</div>
									<span class="ECS_CARTINFO"><form id="formCart" name="formCart" method="post" action="#">
	<span class="cart_num">2</span>
									<div class="sidebar-cart-box">
										<h3 class="sidebar-panel-header">
            <a href="#"><i class="cart-icon"></i><em class="title">购物车</em></a>
            <span class="close-panel"></span>
        </h3>
										<div class="cart-panel-main">
											<div class="cart-panel-content" style="height: 834px;">
												<div class="cart-list">
													<div class="cart-item">
														<div class="item-goods">
															<span class="p-img"><a href="#"><img src="${ctx}/statics/images/200_thumb_G_1437534571298.jpg" width="50" height="50" alt="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插..."></a></span>
															<div class="p-name">
																<a href="#">爱度AY800蓝牙音箱手机电脑迷你音响无线便携插...</a>
															</div>
															<div class="p-price"><strong>¥83.3</strong>×1</div>
															<a href="#">删除</a>
														</div>
													</div>
													<div class="cart-item">
														<div class="item-goods">
															<span class="p-img"><a href="#"><img src="${ctx}/statics/images/51_thumb_G_1437519866381.jpg" width="50" height="50" alt="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连..."></a></span>
															<div class="p-name">
																<a href="#">高端2015夏装新款修身淑坊女女装蕾丝短袖复女连...</a>
															</div>
															<div class="p-price"><strong>¥169.1</strong>×1</div>
															<a href="#">删除</a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="cart-panel-footer">
											<div class="cart-footer-checkout">
												<div class="number"><strong class="count">2</strong>件商品</div>
												<div class="sum">共计：<strong class="total">252.45</strong></div>
												<a class="btn" href="#">去购物车结算</a>
											</div>
										</div>
									</div>
									<script type="text/javascript">
										function deleteCartGoods(rec_id) {
											Ajax.call('delete_cart_goods.php', 'id=' + rec_id, deleteCartGoodsResponse, 'POST', 'JSON');
										}

										/**
										 * 接收返回的信息
										 */
										function deleteCartGoodsResponse(res) {
											if(res.error) {
												alert(res.err_msg);
											} else {
												$('.ECS_CARTINFO').html(res.content);
												$('.cart-panel-content').height($(window).height() - 90);
											}
										}
									</script>
									</form>
									</span>
								</div>
							</li>
							<li class="sidebar-tabs">
								<a href="#"><i class="history"></i></a>
								<div class="popup">
									<font id="mpbtn_histroy">我看过的</font>
									<i class="arrow-right"></i>
								</div>
							</li>
							<li>
								<a href="#"><i class="stores"></i></a>
								<div class="popup">
									我关注的店铺
									<i class="arrow-right"></i>
								</div>
							</li>
							<li id="collectGoods">
								<a href="#"><i class="collect"></i></a>
								<div class="popup">
									我的收藏
									<i class="arrow-right"></i>
								</div>
							</li>
						</ul>
					</div>
					<div class="quick-toggle">
						<ul>
							<li class="quick-area">
								<a class="quick-links-a" href="#"><i class="customer-service"></i></a>
								<div class="sidebar-service quick-sidebar">
									<i class="arrow-right"></i>

									<div class="customer-service customer-service-online">
										<a target="_self" href="#"><span class="icon-online"></span>在线客服</a>
									</div>
									<div class="customer-service">
										<a target="_blank" href="#"><span class="icon-qq"></span>在线客服</a>
									</div>
									<div class="customer-service">
										<a target="_blank" href="#"><span class="icon-ww"></span>在线客服</a>
									</div>
								</div>
							</li>
							<li class="quick-area">
								<a class="quick-links-a" href="#"><i class="qr-code"></i></a>
								<div class="sidebar-code quick-sidebar">
									<i class="arrow-right"></i>
									<img src="${ctx}/statics/images/weixin.jpg">
								</div>
							</li>
							<li class="returnTop" style="display: none;">
								<a href="#"><i class="top"></i></a>
								<div class="popup">
									返回顶部
									<i class="arrow-right"></i>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="">

					<div class="right-sidebar-panels">
						<h3 class="sidebar-panel-header">
                    <a href="#"><i class="bonus-icon"></i><em class="title">红包</em></a>
                    <span class="close-panel"></span>
                </h3>
						<div class="bonus-panel-main">
							<div class="bonus-panel-content" style="height: 884px;">
								<script type="text/javascript">
									function fun(type_id, no_have_val) {
										no_have = (typeof(no_have_val) == "undefined" ? 0 : no_have_val)
										Ajax.call('user.php?act=user_bonus', 'id=' + type_id + '&no_have=' + no_have, bounsResponse, 'GET', 'JSON');
									}

									function bounsResponse(result) {
										$('.pop-compare,.pop-mask').show();
										$('.pop-compare .pop-text').html(result.message);
										$('.pop-compare').css({
											'top': ($(window).height() - $('.pop-compare').height()) / 2
										});
									}
								</script>
								<div class="bonus-list">

								</div>
							</div>
						</div>
					</div>

					<div class="ECS_CARTINFO right-sidebar-panels">
						<form id="formCart" name="formCart" method="post" action="#">
							<span class="cart_num">2</span>
							<div class="sidebar-cart-box">
								<h3 class="sidebar-panel-header">
            <a href="#"><i class="cart-icon"></i><em class="title">购物车</em></a>
            <span class="close-panel"></span>
        </h3>
								<div class="cart-panel-main">
									<div class="cart-panel-content" style="height: 834px;">
										<div class="cart-list">
											<div class="cart-item">
												<div class="item-goods">
													<span class="p-img"><a href="#"><img src="${ctx}/statics/images/200_thumb_G_1437534571298.jpg" width="50" height="50" alt="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插..."></a></span>
													<div class="p-name">
														<a href="#">爱度AY800蓝牙音箱手机电脑迷你音响无线便携插...</a>
													</div>
													<div class="p-price"><strong>¥83.3</strong>×1</div>
													<a href="#">删除</a>
												</div>
											</div>
											<div class="cart-item">
												<div class="item-goods">
													<span class="p-img"><a href="#"><img src="${ctx}/statics/images/51_thumb_G_1437519866381.jpg" width="50" height="50" alt="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连..."></a></span>
													<div class="p-name">
														<a href="#">高端2015夏装新款修身淑坊女女装蕾丝短袖复女连...</a>
													</div>
													<div class="p-price"><strong>¥169.1</strong>×1</div>
													<a href="#">删除</a>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="cart-panel-footer">
									<div class="cart-footer-checkout">
										<div class="number"><strong class="count">2</strong>件商品</div>
										<div class="sum">共计：<strong class="total">252.45</strong></div>
										<a class="btn" href="#">去购物车结算</a>
									</div>
								</div>
							</div>
							<script type="text/javascript">
								function deleteCartGoods(rec_id) {
									Ajax.call('delete_cart_goods.php', 'id=' + rec_id, deleteCartGoodsResponse, 'POST', 'JSON');
								}

								/**
								 * 接收返回的信息
								 */
								function deleteCartGoodsResponse(res) {
									if(res.error) {
										alert(res.err_msg);
									} else {
										$('.ECS_CARTINFO').html(res.content);
										$('.cart-panel-content').height($(window).height() - 90);
									}
								}
							</script>
						</form>
					</div>

					<div class="right-sidebar-panels">
						<h3 class="sidebar-panel-header">
                	<a href="#"><i></i><em class="title">我的足迹</em></a>
                    <span class="close-panel"></span>
                </h3>
						<div class="sidebar-panel-main">
							<div class="sidebar-panel-content">
								<div class="history-panel">
									<ul>
									</ul>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="pop-main pop-compare">
			<div class="pop-header">
				<span>温馨提示</span>
				<a class="pop-close" href="#"></a>
			</div>
			<div class="pop-con">
				<i class="pop-icon"></i>
				<p class="pop-text"></p>
				<a href="#">确定</a>
				<a href="#">取消</a>
			</div>
		</div>

		<div class="pop-main pop-compare-small">
			<div class="pop-header">
				<span>温馨提示</span>
				<a class="pop-close" href="#"></a>
			</div>
			<div class="pop-con">
				<i class="pop-icon"></i>
				<p class="pop-text"></p>
				<a href="#">关闭</a>
			</div>
		</div>

		<div id="tell-me-result" class="tell-me-form" style="display:none;">
			<div class="pop-header"><span>温馨提示</span>
				<a href="#"></a>
			</div>
			<div class="tell-me-content">
				<div class="tell-me-result">
					<div class="result-icon"></div>
					<div class="result-text">
						<div class="title"></div>
						<div class="bottom">
							<span onclick="javascript:closeDiv1();" class="cancel-btn">关闭</span>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="pop-mask"></div>
		<div class="pop-main pop-login" style="top: 234px;">
			<div class="pop-header"> <span>您尚未登录</span>
				<a class="pop-close" href="#"></a>
			</div>
			<div class="pop-con">
				<form name="formLogin" action="#" method="post" onsubmit="return user_login();">
					<div class="form">
						<div class="mt">
							<h2>用户登陆</h2>
							<a href="#"><span class="text">立即注册</span><i class="icon"></i></a>
						</div>
						<div class="mc">
							<div class="msg-wrap">
								<div class="msg-error">
									<i class="msg-icon"></i><span id="msg-error-text" class="msg-error-text"></span>
								</div>
							</div>
							<div class="item item-name">
								<i class="icon"></i>
								<input name="username" id="username" type="text" class="text" value="" tabindex="1" placeholder="手机号/用户名/邮箱">
							</div>
							<div class="item item-password">
								<i class="icon"></i>
								<input type="password" name="password" id="password" class="text" value="" tabindex="2" placeholder="密码">
							</div>
							<div class="item item-authcode" id="o-authcode">
								<div class="item-detail fl">
									<i class="icon"></i>
									<input type="text" id="authcode" name="captcha" class="text text-1" tabindex="3" placeholder="验证码">
								</div>
								<label class="img fl">
                    <img src="##" alt="captcha" style="vertical-align: middle;cursor: pointer;" onclick="this.src=&#39;captcha.php?is_login=1&amp;&#39;+Math.random()">
                </label>
							</div>
							<div class="safety" id="autoentry">
								<input type="checkbox" value="1" name="remember" id="remember" class="checkbox">
								<label for="remember" class="mar-b">请保存我这次的登录信息</label>
								<a class="forget_password fr" href="#">忘记密码？</a>
							</div>
							<div class="login-btn">
								<input type="hidden" name="act" value="act_login">
								<input type="hidden" name="back_act" value="">
								<input type="submit" name="submit" class="btn-img" id="loginsubmit" value="立即登录">
							</div>
							<div class="item-coagent">
								<a href="#"><i class="weixin"></i>微信</a>
								<a href="#"><i class="qq"></i>QQ</a>
								<a href="#"><i class="sina"></i>新浪</a>
								<a href="#"><i class="alipay"></i>支付宝</a>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<script type="text/javascript">
			$(window).scroll(function() {
				if($(this).scrollTop() > $(window).height()) {
					$('.returnTop').show();
				} else {
					$('.returnTop').hide();
				}
			})
			$('.cart-panel-content').height($(window).height() - 90);
			$('.bonus-panel-content').height($(window).height() - 40);
			$(".returnTop").click(function() {
				$('body,html').animate({
					scrollTop: 0
				}, 800);
				return false;
			});
			$('.quick-area').hover(function() {
					$(this).find('.quick-sidebar').toggle();
				})
				//移动图标出现文字
			$(".right-sidebar-panel li").mouseenter(function() {
				$(this).children(".popup").stop().animate({
					left: -92,
					queue: true
				});
				$(this).children(".popup").css("visibility", "visible");
				$(this).children(".ibar_login_box").css("display", "block");
			});
			$(".right-sidebar-panel li").mouseleave(function() {
				$(this).children(".popup").css("visibility", "hidden");
				$(this).children(".popup").stop().animate({
					left: -121,
					queue: true
				});
				$(this).children(".ibar_login_box").css("display", "none");
			});
			//点击购物车、用户信息以及浏览历史事件
			$('.sidebar-tabs').click(function() {
				if($('.right-sidebar-main').hasClass('right-sidebar-main-open') && $(this).hasClass('current')) {
					$('.right-sidebar-main').removeClass('right-sidebar-main-open');
					$(this).removeClass('current');
					$('.right-sidebar-panels').eq($(this).index() - 1).removeClass('animate-in').addClass('animate-out').css('z-index', 1);
				} else {
					$(this).addClass('current').siblings('.sidebar-tabs').removeClass('current');
					$('.right-sidebar-main').addClass('right-sidebar-main-open');
					$('.right-sidebar-panels').eq($(this).index() - 1).addClass('animate-in').removeClass('animate-out').css('z-index', 2).siblings('.right-sidebar-panels').removeClass('animate-in').addClass('animate-out').css('z-index', 1);
				}
			});
			$(".right-sidebar-panels").on('click', '.close-panel', function() {
				$('.sidebar-tabs').removeClass('current');
				$('.right-sidebar-main').removeClass('right-sidebar-main-open');
				$('.right-sidebar-panels').removeClass('animate-out');
			});
			$(document).click(function(e) {
				var target = $(e.target);
				if(target.closest('.right-sidebar-con').length == 0) {
					$('.right-sidebar-main').removeClass('right-sidebar-main-open');
					$('.sidebar-tabs').removeClass('current');
					$('.right-sidebar-panels').removeClass('animate-in').addClass('animate-out').css('z-index', 1);
				}
			})

			$('.pop-login').css('top', ($(window).height() - $('.pop-login').height()) / 2);
			$('.pop-close').click(function() {
				$('.pop-main,.pop-mask').hide();
				$('form[name="formLogin"]').find('.msg-wrap').css('visibility', 'hidden');
				$('.pop-login .item,.pop-login .item-detail').removeClass('item-error');
				$('.pop-login .text').val('');
			})
			$('.pop-login .item .text').focus(function() {
				$(this).addClass('')
			})
		</script>
		<div class="site-footer">
			<div class="footer-related">
				<div class="footer-info clearfix">
					<div class="info-text">
						<p class="nav_bottom">
							<a href="#">关于我们</a><em>|</em>
							<a href="#">联系我们</a><em>|</em>
							<a href="#">商家入驻</a><em>|</em>
							<a href="#">版权证书</a><em>|</em>
							<a href="#">手机商城</a><em>|</em>
							<a href="#">销售联盟</a><em>|</em>
							<a href="#">商城社区</a><em>|</em>
							<a href="#">企业文化</a><em>|</em>
							<a href="#">帮助中心</a><em>|</em>
							<a href="#">留言板</a><em style="display:none">|</em> ICP备案证书号:
							<a href="#">粤ICP备06122404号</a>
						</p>
						<p>
							<a href="#">© 2005-2018 网软志成B2B2C电商平台系统多用户商城系统模板 版权所有，并保留所有权利。</a>
							<a href="#">广州市天河区国家软件园产业基地8栋502 </a>
							<a href="#"> Tel: 020-34506590 </a>
							<a href="#"> E-mail: 38306293@qq.com </a>
						</p>
						<p>
							<script type="text/javascript">
								var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
								document.write(unescape("%3Cspan id='cnzz_stat_icon_1000200717'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1000200717%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
							</script><span id="cnzz_stat_icon_1000200717"><a href="#"><img border="0" hspace="0" vspace="0" src="${ctx}/statics/images/pic1.gif"></a></span>
							<script src="#" type="text/javascript"></script>
							<script src="#" charset="utf-8" type="text/javascript"></script>
							<a href="#"><img src="${ctx}/statics/images/qqonline.gif" height="16" border="0" alt="QQ"> 394223545</a>
							<a href="#"><img src="${ctx}/statics/images/T1tm9.XdRnXXaHNz_X-16-16.gif" width="16" height="16" border="0" alt="淘宝旺旺">38306293</a>
						</p>
					</div>
				</div>
				<img src="#" alt="" style="width:0px;height:0px;display:none;">
				<table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
					<tbody>

						<tr>
							<td bgcolor="#555555">
								<table cellspacing="0" cellpadding="0" width="100%" align="center" border="0">
									<tbody>
										<tr>
											<td align="middle" height="22">
												<font color="#ffffff"><span>电话：020-34506590 34700400 34709708 13719472523 13527894748</span> </font>
											</td>
										</tr>
										<tr>
											<td align="middle" height="22">
												<font color="#ffffff">微信号：13719472523&nbsp;&nbsp;13527894748&nbsp;&nbsp; 联系邮箱：38306293@qq.com</font>
											</td>
										</tr>
										<tr>
											<td align="middle" height="22">
												<font color="#ffffff">公司地址：广州市天河区国家软件园产业基地8栋502 软著登字第0830353号　登记号 2014SR161116 </font>
											</td>
										</tr>
										<tr>
											<td align="middle" height="22">
												<font color="#ffffff"><span class="css2">客服QQ:290116505</span>
													<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a><span class="css2">38306293<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>417586492</span>
													<font face="Verdana">
														<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
													</font><span class="css2">657248708</span>
													<font face="Verdana">
														<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
													</font><br><span class="css2">客服QQ:454882888</span>
													<font face="Verdana">
														<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
													</font><span class="css2">394223545</span>
													<font face="Verdana">
														<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
													</font><span class="css2">469648611</span>
													<font face="Verdana">
														<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
													</font><span class="css2">314730679</span>
													<font face="Verdana">
														<a target="blank" href="#"><img border="0" src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
													</font>
												</font>
											</td>
										</tr>
										<tr>
											<td height="22" align="middle">
												<font color="#ffffff">Copyright(c)2000-2030 www.wrzc.net <span>广州网软志成信息科技有限公司</span> 版权所有</font>
												<a href="#">
													<font color="#FF0000">进入后台管理</font>
												</a>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</tbody>
				</table>

				
				<script type="text/javascript" src="${ctx}/statics/js/base.js"></script>

			</div>
		</div>

		<div id="pop" class="pop" style="display:none">
			<div class="pop_head">选择自提点</div>
			<a href="#"></a>
			<div class="pop_body" id="pickcontent"></div>
		</div>
		<script type="text/javascript" src="${ctx}/statics/js/order_pickpoint.js"></script>
		<div class="choose" id="choose" style="display:none"></div>
		<script type="text/javascript">
			function closeCustomer() {
				$("#choose,#bg").hide();
			}

			function choose_gift(suppid) {
				var sel_goods = new Array();
				var obj_cartgoods = document.getElementsByName("sel_cartgoods[]");
				var j = 0;
				for(i = 0; i < obj_cartgoods.length; i++) {
					if(obj_cartgoods[i].checked == true) {
						sel_goods[j] = obj_cartgoods[i].value;
						j++;
					}
				}
				Ajax.call('flow.php', 'is_ajax=1&suppid=' + suppid + '&sel_goods=' + sel_goods, selgiftResponse, 'GET', 'JSON');
			}

			function selgiftResponse(res) {
				$('#choose').html(res.result).show();
				$('.bg').show();
			}
		</script>
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
	</body>

</html>