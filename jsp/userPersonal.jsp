<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="userhead.jsp"%>
<%@include file="userleft.jsp" %>
<div class="user-right">
	<div class="box">

		<h5 class="user-title user-title-t">
			<span> 安全级别： 很危险&nbsp; 
			<i class="validated1"></i> 
			<span>&nbsp;建议您启动全部安全设置，以保障账户及资金安全</span>
			</span>
		</h5>
		<div class="blank"></div>
		<div id="safe05">
			<div class="mc">
				<div class="fore1">
					<s class="fore1_3"></s> <strong>登录密码</strong>
				</div>
				<div class="fore2">
					<span class="ftx-03">互联网账号存在被盗风险，建议您定期更改密码以保护账户安全。</span> <span
						style="color: #C81623;"></span>
				</div>
				<div class="fore3">
					<input type="button" value="修改"
						onclick="window.location.href='security.php?act=password_reset'"
						class="main-btn main-btn-large" />
				</div>
			</div>
			<div class="mc">
				<div class="fore1">
					<s class="fore1_1"></s> <strong>邮箱验证</strong>
				</div>
				<div class="fore2">

					<span style="color: #ED5854;">验证后，可用于快速找回登录密码，接收账户余额变动提醒</span>

				</div>
				<div class="fore3">
					<input type="button" value="验证邮箱"
						onclick="window.location.href='security.php?act=email_validate'"
						class="main-btn main-btn-large" /> <input type="button"
						value="修改"
						onclick="window.location.href='security.php?act=email_binding'"
						class="main-btn main-btn-large" />

				</div>
			</div>
			<div class="mc">
				<div class="fore1">
					<s class="fore1_1"></s> <strong>手机验证</strong>
				</div>
				<div class="fore2">

					<span style="color: #ED5854;">验证后，可用于快速找回登录密码及支付密码，接收账户余额变动提醒</span>

				</div>
				<div class="fore3">
					<input type="button" value="验证手机"
						onclick="window.location.href='security.php?act=mobile_validate'"
						class="main-btn main-btn-large" /> <input type="button"
						value="修改"
						onclick="window.location.href='security.php?act=mobile_binding'"
						class="main-btn main-btn-large" />

				</div>
			</div>

			<div class="mc" id="surplus-mc">
				<div class="fore1">
					<s class="fore1_1"></s> <strong>余额支付</strong>
				</div>
				<div class="fore2">

					<span style="color: #C81623;">开启后，可保障您账户余额支付的安全</span>

				</div>
				<div class="fore3">
					<input type="button" value="开启支付密码"
						onclick="window.location.href='security.php?act=payment_password_reset'"
						class="main-btn main-btn-large" />

				</div>
				<div class="fore4">
					<p>
						<a href="security.php?act=payment_password_reset">忘记支付密码？</a>
					</p>
					<p>
						<a href="security.php?act=payment_password_reset">修改支付密码</a>
					</p>
				</div>
			</div>

			<div class="mc">
				<div class="fore1">
					<s class="fore1_1"></s> <strong>我是卖家</strong>
				</div>
				<div class="fore2">
					<span style="color: #C81623;">同步后，可以用您当前的用户名、邮箱、手机号登录商家后台</span>
				</div>
				<div class="fore3">
					<input type="button" value="同步"
						onclick="window.location.href='security.php?act=sync_supplier'"
						class="main-btn main-btn-large" />
				</div>
			</div>
		</div>
	</div>
</div>
</div>
<%@include file="foot.jsp" %>

<script language="javascript">
	document.getElementById("retData").innerHTML = "<center>正在查询物流信息，请稍后...</center>";
	var expressid = document.getElementById("shipping_name").innerHTML.replace(
			/(^\s*)|(\s*$)/g, "");
	var expressno = '';
	Ajax.call('plugins/kuaidi100/kuaidi100_post.php?com=' + expressid + '&nu='
			+ expressno, 'showtest=showtest', function(data) {
		document.getElementById("retData").innerHTML = data;
	}, 'GET', 'TEXT');
</script>

</body>
<script type="text/javascript">
	var msg_title_empty = "留言标题为空";
	var msg_content_empty = "留言内容为空";
	var msg_title_limit = "留言标题不能超过200个字";
</script>

</html>