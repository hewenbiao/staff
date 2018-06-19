<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="userhead.jsp" %>
    <%@include file="userleft.jsp" %>
<div class="user-right">
				<div class="box">

					<script type="text/javascript">
						var bonus_sn_empty = "请输入您要添加的红包号码！";
						var bonus_sn_error = "您输入的红包号码格式不正确！";
						var email_empty = "请输入您的电子邮件地址！";
						var email_error = "您输入的电子邮件地址格式不正确！";
						var old_password_empty = "请输入您的原密码！";
						var new_password_empty = "请输入您的新密码！";
						var confirm_password_empty = "请输入您的确认密码！";
						var both_password_error = "您现两次输入的密码不一致！";
						var msg_blank = "不能为空";
						var no_select_question = "- 您没有完成密码提示问题的操作";
					</script>
					<div class="tabmenu">
						<ul class="tab pngFix">
							<li class="active">
								<a href="#">红包</a>
							</li>
						</ul>
						<span class="ncm-btn" title="红包序列号">
            <form name="addBouns" action="user.php" method="post" onSubmit="return addBonus()">
              <input onblur="if(this.value=='') this.value='红包序列号';" onfocus="if(this.value=='红包序列号') this.value='';"  name="bonus_sn" type="text" size="10" class="inputBgb" value="红包序列号"/>
              <input type="hidden" name="act" value="act_add_bonus" class="inputBg" />
              <input type="submit" class="bnt_blue_b" style="border:none;" value="添加红包" />
            </form>
            </span> </div>
					<div class="mar_top">
						<div id="tab_tab1_1">
							<ul class="bonus_con">

								<li>
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">10.00</span><span class="bonus_status">已过期</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满80.00</p>
									<p>有效时间：截至2016-08-30</p>
								</li>

								<li>
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">10.00</span><span class="bonus_status"><a href="user.php?act=order_detail&order_id=151" >已使用</a></span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满79.00</p>
									<p>有效时间：截至2017-02-23</p>
								</li>

								<li>
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">8.00</span><span class="bonus_status">已过期</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满59.00</p>
									<p>有效时间：截至2017-02-23</p>
								</li>

								<li style="margin:0px 0px 11px 0px">
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">5.00</span><span class="bonus_status">已过期</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满39.00</p>
									<p>有效时间：截至2017-02-23</p>
								</li>

								<li>
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">5.00</span><span class="bonus_status">已过期</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满39.00</p>
									<p>有效时间：截至2017-02-23</p>
								</li>

								<li>
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">666.00</span><span class="bonus_status">未使用</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满1666.00</p>
									<p>有效时间：截至2020-03-30</p>
								</li>

								<li>
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">19.00</span><span class="bonus_status">未使用</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满111.00</p>
									<p>有效时间：截至2020-03-04</p>
								</li>

								<li style="margin:0px 0px 11px 0px">
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">19.00</span><span class="bonus_status">未使用</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满111.00</p>
									<p>有效时间：截至2020-03-04</p>
								</li>

								<li>
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">19.00</span><span class="bonus_status">未使用</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满111.00</p>
									<p>有效时间：截至2020-03-04</p>
								</li>

								<li>
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">19.00</span><span class="bonus_status">未使用</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满111.00</p>
									<p>有效时间：截至2020-03-04</p>
								</li>

								<li>
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">19.00</span><span class="bonus_status">未使用</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满111.00</p>
									<p>有效时间：截至2020-03-04</p>
								</li>

								<li style="margin:0px 0px 11px 0px">
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">19.00</span><span class="bonus_status">未使用</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满111.00</p>
									<p>有效时间：截至2020-03-04</p>
								</li>

								<li>
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">19.00</span><span class="bonus_status">未使用</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满111.00</p>
									<p>有效时间：截至2020-03-04</p>
								</li>

								<li>
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">19.00</span><span class="bonus_status">未使用</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满111.00</p>
									<p>有效时间：截至2020-03-04</p>
								</li>

								<li>
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">19.00</span><span class="bonus_status">未使用</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满111.00</p>
									<p>有效时间：截至2020-03-04</p>
								</li>

								<li style="margin:0px 0px 11px 0px">
									<p class="bonus_con_1"><strong>￥</strong><span class="type_money">19.00</span><span class="bonus_status">未使用</span></p>
									<p>发行店铺：
										<a href="index.php" target="_blank">自营商</a>
									</p>
									<p>使用条件：满111.00</p>
									<p>有效时间：截至2020-03-04</p>
								</li>

							</ul>
							<div class="blank5"></div>
							<form name="selectPageForm" action="/user.php" method="get">
								<div class="page">
									<div class="page-wrap fr">
										<div class="page-num fl">
											<span class="num prev disabled">
            	<i class="icon"></i>
                <i>上一页</i>
            </span>

											<span class="num curr">1</span>

											<a class="num" href="user.php?act=bonus&suppid=-1&page=2">2</a>

											<a class="num next" href="user.php?act=bonus&suppid=-1&page=2">
												<i>下一页</i>
												<i class="icon"></i>
											</a>
										</div>

										<div class="total">共 2 页</div>

									</div>
								</div>
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
			</div>
		</div>
		<%@include file="foot.jsp" %>
</body>
</html>