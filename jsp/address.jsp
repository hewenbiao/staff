<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="userhead.jsp" %>
    <%@include file="userleft.jsp" %>
<div class="user-right">
				<div class="box">

					<script type="text/javascript" src="${ctx}/statics/js/region.js"></script>
					<script type="text/javascript" src="${ctx}/statics/js/shopping_flow.js"></script>
					<script type="text/javascript">
						region.isAdmin = false;
						var consignee_not_null = "收货人姓名不能为空！";
						var country_not_null = "请您选择收货人所在国家！";
						var province_not_null = "请您选择收货人所在省份！";
						var city_not_null = "请您选择收货人所在城市！";
						var district_not_null = "请您选择收货人所在区域！";
						var invalid_email = "您输入的邮件地址不是一个合法的邮件地址。";
						var address_not_null = "收货人的详细地址不能为空！";
						var tele_not_null = "固定电话不能为空！";
						var shipping_not_null = "请您选择配送方式！";
						var payment_not_null = "请您选择支付方式！";
						var goodsattr_style = "1";
						var tele_invaild = "固定电话号码不是有效的号码，\n请输入形如：区号-电话号码-分机号 的数字，\n如：0335-6025437或021-31756512";
						var zip_not_num = "邮政编码只能填写数字";
						var mobile_not_null = "手机号码不能为空!";
						var mobile_invaild = "手机号码不是合法号码";
						var mobile_or_tel_not_null = "手机号码和固定电话至少要填写一项";

						onload = function() {
							if(!document.all) {
								document.forms['theForm'].reset();
							}
						}
					</script>
					<div class="tabmenu">
						<ul class="tab pngFix">
							<li class="first active">地址列表</li>
						</ul>
					</div>
					<div class="alert alert-success">
						<h4>操作提示：</h4>
						<ul>
							<li>您可对已有的地址进行编辑及删除，亦可新增收货地址</li>
						</ul>
					</div>
					<div class="mar_top">
						<form action="user.php" method="post" name="theForm" onsubmit="return checkConsignee(this)">
							<table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eeeeee">
								<tr>
									<td align="right" width="10%">配送区域：</td>
									<td colspan="3" align="left">
										<select name="country" id="selCountries_0" onchange="region.changed(this, 1, 'selProvinces_0')">
											<option value="0">请选择国家</option>
											<option value="1" selected>中国</option>
										</select>
										<select name="province" id="selProvinces_0" onchange="region.changed(this, 2, 'selCities_0')">
											<option value="0">请选择省</option>
											<option value="2" selected>北京</option>
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
										<select name="city" id="selCities_0" onchange="region.changed(this, 3, 'selDistricts_0')">
											<option value="0">请选择市</option>
											<option value="52" selected>北京</option>
										</select>
										<select name="district" id="selDistricts_0">
											<option value="0">请选择区</option>
											<option value="500" selected>东城区</option>
											<option value="501">西城区</option>
											<option value="502">海淀区</option>
											<option value="503">朝阳区</option>
											<option value="504">崇文区</option>
											<option value="505">宣武区</option>
											<option value="506">丰台区</option>
											<option value="507">石景山区</option>
											<option value="508">房山区</option>
											<option value="509">门头沟区</option>
											<option value="510">通州区</option>
											<option value="511">顺义区</option>
											<option value="512">昌平区</option>
											<option value="513">怀柔区</option>
											<option value="514">平谷区</option>
											<option value="515">大兴区</option>
											<option value="516">密云县</option>
											<option value="517">延庆县</option>
										</select>
										(必填) </td>
								</tr>
								<tr>
									<td align="right" width="10%">收货人姓名：</td>
									<td align="left" width="40%"><input name="consignee" type="text" class="inputBg" id="consignee_0" value="哈哈" /> (必填) </td>
									<td align="right" width="10%">电子邮件地址：</td>
									<td align="left" width="40%"><input name="email" type="text" class="inputBg" id="email_0" value="" />
									</td>
								</tr>
								<tr>
									<td align="right">详细地址：</td>
									<td align="left" colspan="3"><input name="address" type="text" class="inputBg" id="address_0" value="东城区" style="width: 692px;" /> (必填)
									</td>
								</tr>
								<tr>
									<td align="right">固定电话：</td>
									<td align="left"><input name="tel" type="text" class="inputBg" id="tel_0" value="" placeholder="区号-电话号码-分机号" /></td>
									<td align="right">手机：</td>
									<td align="left"><input name="mobile" type="text" class="inputBg" id="mobile_0" value="18234256475" />
									</td>
								</tr>
								<tr>
									<!-- 
                  <td align="right">标志建筑：</td>
                  <td align="left"><input name="sign_building" type="text" class="inputBg" id="sign_building_0" value="" /></td>
                -->
									<td align="right">邮政编码：</td>
									<td align="left"><input name="zipcode" type="text" class="inputBg" id="zipcode_0" value="" /></td>
									<td align="right">最佳送货时间：</td>
									<td align="left"><input name="best_time" type="text" class="inputBg" id="best_time_0" value="" /></td>
								</tr>
								<tr>
									<td colspan="4" align="center">

										<input type="submit" name="submit" class="main-btn main-btn-large" value="确认修改" />
										<input name="button" type="button" class="main-btn main-btn-large" onclick="if (confirm('你确认要删除该收货地址吗？'))location.href='user.php?act=drop_consignee&id=63'" value="删除" />

										<input type="hidden" name="act" value="act_edit_address" />
										<input name="address_id" type="hidden" value="63" /></td>
								</tr>
							</table>
						</form>
						<div class="blank10"></div>
						<form action="user.php" method="post" name="theForm" onsubmit="return checkConsignee(this)">
							<table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eeeeee">
								<tr>
									<td align="right" width="10%">配送区域：</td>
									<td colspan="3" align="left">
										<select name="country" id="selCountries_1" onchange="region.changed(this, 1, 'selProvinces_1')">
											<option value="0">请选择国家</option>
											<option value="1" selected>中国</option>
										</select>
										<select name="province" id="selProvinces_1" onchange="region.changed(this, 2, 'selCities_1')">
											<option value="0">请选择省</option>
											<option value="2">北京</option>
											<option value="3" selected>安徽</option>
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
										<select name="city" id="selCities_1" onchange="region.changed(this, 3, 'selDistricts_1')">
											<option value="0">请选择市</option>
											<option value="36" selected>安庆</option>
											<option value="37">蚌埠</option>
											<option value="38">巢湖</option>
											<option value="39">池州</option>
											<option value="40">滁州</option>
											<option value="41">阜阳</option>
											<option value="42">淮北</option>
											<option value="43">淮南</option>
											<option value="44">黄山</option>
											<option value="45">六安</option>
											<option value="46">马鞍山</option>
											<option value="47">宿州</option>
											<option value="48">铜陵</option>
											<option value="49">芜湖</option>
											<option value="50">宣城</option>
											<option value="51">亳州</option>
											<option value="3401">合肥</option>
										</select>
										<select name="district" id="selDistricts_1">
											<option value="0">请选择区</option>
											<option value="398">迎江区</option>
											<option value="399" selected>大观区</option>
											<option value="400">宜秀区</option>
											<option value="401">桐城市</option>
											<option value="402">怀宁县</option>
											<option value="403">枞阳县</option>
											<option value="404">潜山县</option>
											<option value="405">太湖县</option>
											<option value="406">宿松县</option>
											<option value="407">望江县</option>
											<option value="408">岳西县</option>
										</select>
										(必填) </td>
								</tr>
								<tr>
									<td align="right" width="10%">收货人姓名：</td>
									<td align="left" width="40%"><input name="consignee" type="text" class="inputBg" id="consignee_1" value="哦他太" /> (必填) </td>
									<td align="right" width="10%">电子邮件地址：</td>
									<td align="left" width="40%"><input name="email" type="text" class="inputBg" id="email_1" value="2154@qq.com" />
									</td>
								</tr>
								<tr>
									<td align="right">详细地址：</td>
									<td align="left" colspan="3"><input name="address" type="text" class="inputBg" id="address_1" value="哦啊放入汤" style="width: 692px;" /> (必填)
									</td>
								</tr>
								<tr>
									<td align="right">固定电话：</td>
									<td align="left"><input name="tel" type="text" class="inputBg" id="tel_1" value="-" placeholder="区号-电话号码-分机号" /></td>
									<td align="right">手机：</td>
									<td align="left"><input name="mobile" type="text" class="inputBg" id="mobile_1" value="15582412512" />
									</td>
								</tr>
								<tr>
									<!-- 
                  <td align="right">标志建筑：</td>
                  <td align="left"><input name="sign_building" type="text" class="inputBg" id="sign_building_1" value="" /></td>
                -->
									<td align="right">邮政编码：</td>
									<td align="left"><input name="zipcode" type="text" class="inputBg" id="zipcode_1" value="" /></td>
									<td align="right">最佳送货时间：</td>
									<td align="left"><input name="best_time" type="text" class="inputBg" id="best_time_1" value="" /></td>
								</tr>
								<tr>
									<td colspan="4" align="center">

										<input type="submit" name="submit" class="main-btn main-btn-large" value="确认修改" />
										<input name="button" type="button" class="main-btn main-btn-large" onclick="if (confirm('你确认要删除该收货地址吗？'))location.href='user.php?act=drop_consignee&id=64'" value="删除" />

										<input type="hidden" name="act" value="act_edit_address" />
										<input name="address_id" type="hidden" value="64" /></td>
								</tr>
							</table>
						</form>
						<div class="blank10"></div>
						<form action="user.php" method="post" name="theForm" onsubmit="return checkConsignee(this)">
							<table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eeeeee">
								<tr>
									<td align="right" width="10%">配送区域：</td>
									<td colspan="3" align="left">
										<select name="country" id="selCountries_2" onchange="region.changed(this, 1, 'selProvinces_2')">
											<option value="0">请选择国家</option>
											<option value="1" selected>中国</option>
										</select>
										<select name="province" id="selProvinces_2" onchange="region.changed(this, 2, 'selCities_2')">
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
										<select name="city" id="selCities_2" onchange="region.changed(this, 3, 'selDistricts_2')">
											<option value="0">请选择市</option>
										</select>
										<select name="district" id="selDistricts_2" style="display:none">
											<option value="0">请选择区</option>
										</select>
										(必填) </td>
								</tr>
								<tr>
									<td align="right" width="10%">收货人姓名：</td>
									<td align="left" width="40%"><input name="consignee" type="text" class="inputBg" id="consignee_2" value="" /> (必填) </td>
									<td align="right" width="10%">电子邮件地址：</td>
									<td align="left" width="40%"><input name="email" type="text" class="inputBg" id="email_2" value="38306293@qq.com" />
									</td>
								</tr>
								<tr>
									<td align="right">详细地址：</td>
									<td align="left" colspan="3"><input name="address" type="text" class="inputBg" id="address_2" value="" style="width: 692px;" /> (必填)
									</td>
								</tr>
								<tr>
									<td align="right">固定电话：</td>
									<td align="left"><input name="tel" type="text" class="inputBg" id="tel_2" value="" placeholder="区号-电话号码-分机号" /></td>
									<td align="right">手机：</td>
									<td align="left"><input name="mobile" type="text" class="inputBg" id="mobile_2" value="" />
									</td>
								</tr>
								<tr>
									<!-- 
                  <td align="right">标志建筑：</td>
                  <td align="left"><input name="sign_building" type="text" class="inputBg" id="sign_building_2" value="" /></td>
                -->
									<td align="right">邮政编码：</td>
									<td align="left"><input name="zipcode" type="text" class="inputBg" id="zipcode_2" value="" /></td>
									<td align="right">最佳送货时间：</td>
									<td align="left"><input name="best_time" type="text" class="inputBg" id="best_time_2" value="" /></td>
								</tr>
								<tr>
									<td colspan="4" align="center">

										<input type="submit" name="submit" class="main-btn main-btn-large" value="新增收货地址" />

										<input type="hidden" name="act" value="act_edit_address" />
										<input name="address_id" type="hidden" value="" /></td>
								</tr>
							</table>
						</form>
						<div class="blank10"></div>

					</div>

				</div>
			</div>
		</div>
		<%@include file="foot.jsp" %>
</body>
</html>