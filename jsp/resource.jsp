<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="userhead.jsp" %>
    <%@include file="userleft.jsp" %>
<div class="user-right">
				<div class="box">

					<script type="text/javascript">
						var surplus_amount_empty = "请输入您要操作的金额数量！";
						var surplus_amount_error = "您输入的金额数量格式不正确！";
						var process_desc = "请输入您此次操作的备注信息！";
						var payment_empty = "请选择支付方式！";
					</script>
					<div class="tabmenu">
						<ul class="tab pngFix">
							<li class="first active">会员余额</li>
						</ul>
					</div>
					<div class="mar_top">
						<table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eeeeee">
							<tr>
								<td align="right">
									<a href="user.php?act=account_deposit" class="main-color">充值</a> |
									<a href="user.php?act=account_raply" class="main-color">提现</a> |
									<a href="user.php?act=account_detail" class="main-color">查看帐户明细</a> |
									<a href="user.php?act=account_log" class="main-color">查看申请记录</a>
								</td>
							</tr>
						</table>
					</div>

					<table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eeeeee">
						<tr align="center">
							<td>操作时间</td>
							<td>类型</td>
							<td>金额</td>
							<td>会员备注</td>
							<td>管理员备注</td>
							<td>状态</td>
							<td>操作</td>
						</tr>
						<tr>
							<td align="center">2017-06-23</td>
							<td align="center">充值</td>
							<td align="center">¥0.10</td>
							<td align="center">N/A</td>
							<td align="center">N/A</td>
							<td align="center">未确认</td>
							<td align="center">
								<a href="user.php?act=pay&id=20&pid=7">付款</a>

								<a href="user.php?act=cancel&id=20" onclick="if (!confirm('您确定要删除此条记录吗？')) return false;">取消</a>
							</td>
						</tr>
						<tr>
							<td align="center">2017-06-23</td>
							<td align="center">充值</td>
							<td align="center">¥0.10</td>
							<td align="center">N/A</td>
							<td align="center">N/A</td>
							<td align="center">未确认</td>
							<td align="center">
								<a href="user.php?act=pay&id=19&pid=7">付款</a>

								<a href="user.php?act=cancel&id=19" onclick="if (!confirm('您确定要删除此条记录吗？')) return false;">取消</a>
							</td>
						</tr>
						<tr>
							<td align="center">2017-06-21</td>
							<td align="center">充值</td>
							<td align="center">¥1.00</td>
							<td align="center">N/A</td>
							<td align="center">s</td>
							<td align="center">未确认</td>
							<td align="center">
								<a href="user.php?act=pay&id=18&pid=7">付款</a>

								<a href="user.php?act=cancel&id=18" onclick="if (!confirm('您确定要删除此条记录吗？')) return false;">取消</a>
							</td>
						</tr>
						<tr>
							<td align="center">2017-03-10</td>
							<td align="center">充值</td>
							<td align="center">¥1.00</td>
							<td align="center">33</td>
							<td align="center">N/A</td>
							<td align="center">未确认</td>
							<td align="center">
								<a href="user.php?act=pay&id=17&pid=1">付款</a>

								<a href="user.php?act=cancel&id=17" onclick="if (!confirm('您确定要删除此条记录吗？')) return false;">取消</a>
							</td>
						</tr>
						<tr>
							<td align="center">2017-03-10</td>
							<td align="center">充值</td>
							<td align="center">¥2.00</td>
							<td align="center">55</td>
							<td align="center">N/A</td>
							<td align="center">未确认</td>
							<td align="center">
								<a href="user.php?act=pay&id=16&pid=1">付款</a>

								<a href="user.php?act=cancel&id=16" onclick="if (!confirm('您确定要删除此条记录吗？')) return false;">取消</a>
							</td>
						</tr>
						<tr>
							<td align="center">2017-03-10</td>
							<td align="center">充值</td>
							<td align="center">¥2.00</td>
							<td align="center">55</td>
							<td align="center">N/A</td>
							<td align="center">未确认</td>
							<td align="center">
								<a href="user.php?act=pay&id=15&pid=1">付款</a>

								<a href="user.php?act=cancel&id=15" onclick="if (!confirm('您确定要删除此条记录吗？')) return false;">取消</a>
							</td>
						</tr>
						<tr>
							<td align="center">2017-03-10</td>
							<td align="center">充值</td>
							<td align="center">¥1.00</td>
							<td align="center">66%</td>
							<td align="center">N/A</td>
							<td align="center">未确认</td>
							<td align="center">
								<a href="user.php?act=pay&id=14&pid=1">付款</a>

								<a href="user.php?act=cancel&id=14" onclick="if (!confirm('您确定要删除此条记录吗？')) return false;">取消</a>
							</td>
						</tr>
						<tr>
							<td align="center">2017-03-10</td>
							<td align="center">充值</td>
							<td align="center">¥1.00</td>
							<td align="center">6678</td>
							<td align="center">N/A</td>
							<td align="center">未确认</td>
							<td align="center">
								<a href="user.php?act=pay&id=13&pid=1">付款</a>

								<a href="user.php?act=cancel&id=13" onclick="if (!confirm('您确定要删除此条记录吗？')) return false;">取消</a>
							</td>
						</tr>
						<tr>
							<td align="center">2016-02-24</td>
							<td align="center">充值</td>
							<td align="center">¥11111.00</td>
							<td align="center">N/A</td>
							<td align="center">N/A</td>
							<td align="center">已完成</td>
							<td align="center">
							</td>
						</tr>
						<tr>
							<td colspan="7" align="right">您当前消费的金额为：10830.29</td>
						</tr>

						<tr>
							<td colspan="7" align="right">您当前的可用资金为：￥344.55</td>
						</tr>
					</table>
					<form name="selectPageForm" action="/user.php" method="get">
					</form>
					<script type="Text/Javascript" language="JavaScript">
						<!--

function selectPage(sel){
  sel.form.submit();
}

//-->
					</script>

				</div>
			</div>
		</div>
<%@include file="foot.jsp" %>
</body>
</html>