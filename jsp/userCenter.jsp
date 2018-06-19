<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>						
						<%@include file="userhead.jsp" %>
						<%@include file="userleft.jsp" %>
			<div class="user-right">
				<div class="box">

					<div class="tabmenu">
						<ul class="tab pngFix">
							<li class="first active">储值卡充值</li>
						</ul>
					</div>
					<div class="blank"></div>
					<form action="" method="post" name="valueForm" id="valueForm" onSubmit="return valueLogin()">
						<table width="100%" border="0" cellpadding="5" cellspacing="1" bgcolor="#ffffff" style="border:1px solid #ddd;">
							<tr bgcolor="#ffffff">
								<td colspan="2" align="left" style="padding:35px 0px 15px 30px;font-size:15px;">当前账户余额：¥10344.55</td>
							</tr>
							<tr bgcolor="#ffffff">
								<td align="right" height="25px" width="20%">储值卡卡号：</td>
								<td width="80%"><input type="text" name="vcard" size=30 class="inputBg">
									<font color=#ff3300>*</font>
								</td>
							</tr>
							<tr bgcolor="#ffffff">
								<td align="right" height="25px" width="20%">密码：</td>
								<td width="80%"><input type="password" name="pwd" size=30 class="inputBg">
									<font color=#ff3300>*</font>
								</td>
							</tr>
							<tr bgcolor="#ffffff">
								<td align="right" height="25px" width="20%">充值账号：</td>
								<td width="80%"><input type="text" name="card" value="yiren" size=30 readonly class="inputBg" style="background:#eeeeee;">
									<font color=#ff3300>* 默认为登录用户，不可编辑</font>
								</td>
							</tr>
							<tr>
								<td></td>
								<td height=30><input type="hidden" name="act" value="vc_login_act">
									<input name="submit" type="submit" class="main-btn main-btn-large" value="充值" />
								</td>
							</tr>
							<tr>
								<td colspan=2 height=30></td>
							</tr>
						</table>
					</form>
					<script type="text/javascript">
						function valueLogin() {
							var frm = document.forms['valueForm'];
							var vcard = frm.elements['vcard'].value;
							var pwd = frm.elements['pwd'].value;
							var msg = '';

							if(vcard.length == 0) {
								msg += '卡号不能为空\n';
							}
							if(pwd.length == 0) {
								msg += '密码不能为空\n';
							}

							if(msg.length > 0) {
								alert(msg);
								return false;
							} else {
								return true;
							}
						}
					</script>

				</div>
			</div>
		</div>
		
		
		
	<%@include file="foot.jsp" %>
	<script language="javascript">
		get_invoice_info('', '', 1);

		function get_invoice_info(expressid, expressno, div_id) {
			$("#ul_i").children("li").removeClass();
			document.getElementById("div_i_" + div_id).className = 'selected';
			Ajax.call(
				'plugins/kuaidi100/kuaidi100_post.php?com=' + expressid + '&nu=' + expressno,
				'showtest=showtest',
				function(data) {
					document.getElementById("retData").innerHTML = '快递公司：' + expressid + ' &nbsp; 运单号：' + expressno + '<br>';
					document.getElementById("retData").innerHTML += data;
				},
				'GET',
				'TEXT',
				false
			);
		}

		function get_invoice_info2(expressid, expressno, div_id, order_id) {
			$("#ul_i_" + order_id).children("li").removeClass();
			document.getElementById("div_i_" + order_id + "_" + div_id).className = 'selected';
			Ajax.call(
				'plugins/kuaidi100/kuaidi100_post.php?com=' + expressid + '&nu=' + expressno,
				'showtest=showtest',
				function(data) {
					document.getElementById("retData_" + order_id).innerHTML = '快递公司：' + expressid + ' &nbsp; 运单号：' + expressno + '<br>';
					document.getElementById("retData_" + order_id).innerHTML += data;
				},
				'GET',
				'TEXT',
				false
			);
		}
	</script>
	<script type="text/javascript">
		var msg_title_empty = "留言标题为空";
		var msg_content_empty = "留言内容为空";
		var msg_title_limit = "留言标题不能超过200个字";
	</script>

</html>