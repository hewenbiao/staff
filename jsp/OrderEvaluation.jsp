<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@include file="userhead.jsp"%>
<%@include file="userleft.jsp" %>

			<div class="user-right">
				<div class="box">
					<div class="tabmenu">
						<ul class="tab">
							<li class="active">
								<a href="#">商品评价/晒单（5个待评价，5个待晒单）</a>
							</li>
						</ul>
					</div>
					<table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#eeeeee" class="item_list">
						<tr>
							<th colspan="2">商品信息</th>
							<th width="120">商品来源</th>
							<th width="80">购买时间</th>
							<th width="80">评价</th>
							<th width="80">晒单</th>
						</tr>
						<input id="commtr_have" type="hidden" value="0" />
						<tr>
							<td width="50">
								<a href="goods.php?id=135" target="_blank">

									<img height="50" width="50" src="${ctx}/statics/images/135_thumb_G_1437528636775.jpg" />

								</a>
							</td>
							<td>
								<a href="goods.php?id=135" target="_blank">迪奥真我香水50ml</a>
							</td>
							<td align="center">
								<a href="supplier.php?suppId=6" target="_blank">伊人化妆品专卖店</a>
							</td>
							<td align="center">2018-06-12</td>
							<td align="center">

								<a href="javascript:;" onclick="show_commtr(273)">发表评价</a>
							</td>
							<td align="center">

								<a href="user.php?act=shaidan_send&id=273" target="_self">发表晒单</a>
							</td>
						</tr>
						<tr id="commtr_273">
							<td colspan="6" class="comment-pop" style="background:#fffdee;">
								<div class="send-comment">
									<form action="user.php?act=my_comment_send" method="post" onsubmit="return check_my_comment_send(273, 135, 234)">
										<input type="hidden" name="goods_id" value="135" />
										<input type="hidden" name="rec_id" value="273" />
										<table width="70%" border="0" cellspacing="1" cellpadding="5" style="float:left">
											<script src="${ctx}/statics/js/jquery.raty.js" type="text/javascript"></script>
											<tr>
												<th>描述：</th>
												<td class="stars_box">
													<div id="star1135" class="star_t"></div>
													<div id="result1135" class="result"></div>
													<input type="hidden" name="comment_rank" value="" id="hidden1135" />
													<input type="hidden" name="o1_id" value="" />
													<div class="feel_con_box">
														<div class="feel_con"><span class="arrow"></span>1分，非常不满意</div>
														<div class="feel_con"><span class="arrow"></span>2分，不满意</div>
														<div class="feel_con"><span class="arrow"></span>3分，一般</div>
														<div class="feel_con"><span class="arrow"></span>4分，满意</div>
														<div class="feel_con"><span class="arrow"></span>5分，非常满意</div>
													</div>
												</td>
											</tr>
											<tr>
												<th>服务：</th>
												<td class="stars_box">
													<div id="star2135" class="star_t"></div>
													<div id="result2135" class="result"></div>
													<input type="hidden" name="server" value="" id="hidden2135" />
													<input type="hidden" name="o_id" value="234" />
													<div class="feel_con_box">
														<div class="feel_con"><span class="arrow"></span>1分，非常不满意</div>
														<div class="feel_con"><span class="arrow"></span>2分，不满意</div>
														<div class="feel_con"><span class="arrow"></span>3分，一般</div>
														<div class="feel_con"><span class="arrow"></span>4分，满意</div>
														<div class="feel_con"><span class="arrow"></span>5分，非常满意</div>
													</div>
												</td>
											</tr>
											<tr>
												<th>发货：</th>
												<td class="stars_box">
													<div id="star3135" class="star_t"></div>
													<div id="result3135" class="result"></div>
													<input type="hidden" name="send" value="" id="hidden3135" />
													<div class="feel_con_box">
														<div class="feel_con"><span class="arrow"></span>1分，非常不满意</div>
														<div class="feel_con"><span class="arrow"></span>2分，不满意</div>
														<div class="feel_con"><span class="arrow"></span>3分，一般</div>
														<div class="feel_con"><span class="arrow"></span>4分，满意</div>
														<div class="feel_con"><span class="arrow"></span>5分，非常满意</div>
													</div>
												</td>
											</tr>
											<tr>
												<th>物流：</th>
												<td class="stars_box">
													<div id="star4135" class="star_t"></div>
													<div id="result4135" class="result"></div>
													<input type="hidden" name="shipping" value="" id="hidden4135" />
													<div class="feel_con_box">
														<div class="feel_con"><span class="arrow"></span>1分，非常不满意</div>
														<div class="feel_con"><span class="arrow"></span>2分，不满意</div>
														<div class="feel_con"><span class="arrow"></span>3分，一般</div>
														<div class="feel_con"><span class="arrow"></span>4分，满意</div>
														<div class="feel_con"><span class="arrow"></span>5分，非常满意</div>
													</div>
												</td>
											</tr>

											<script type="text/javascript">
												rat('star1135', 'result1135', 'hidden1135', 1);
												rat('star2135', 'result2135', 'hidden2135', 1);
												rat('star3135', 'result3135', 'hidden3135', 1);
												rat('star4135', 'result4135', 'hidden4135', 1);
												$('.star_t').find('img').mouseover(function() {
													var index = $(this).index();
													$(this).parents('.star_t').siblings('.feel_con_box').find('.feel_con').eq(index).css('display', 'inline-block').siblings('.feel_con').hide();
												}).mouseout(function() {
													$(this).parents('.star_t').siblings('.feel_con_box').find('.feel_con').hide();
												})

												function rat(star, result, hidden, m) {
													star = '#' + star;
													result = '#' + result;
													hidden = '#' + hidden;

													$(result).hide(); //将结果DIV隐藏

													$(star).raty({
														hints: ['1', '2', '3', '4', '5'],
														path: "themes/wrzcnet_jdcom/images",
														starOff: 'star-off-big.png',
														starOn: 'star-on-big.png',
														size: 24,
														start: 40,
														showHalf: true,
														targetKeep: true, //targetKeep 属性设置为true，用户的选择值才会被保持在目标DIV中，否则只是鼠标悬停时有值，而鼠标离开后这个值就会消失
														click: function(score, evt) {
															//第一种方式：直接取值
															$(result).show();
															if((score * m) == 5) {
																$(result).html('<span>' + score * m + '</span>分，非常满意');
															} else if((score * m) == 4) {
																$(result).html('<span>' + score * m + '</span>分，满意');
															} else if((score * m) == 3) {
																$(result).html('<span>' + score * m + '</span>分，一般');
															} else if((score * m) == 2) {
																$(result).html('<span>' + score * m + '</span>分，不满意');
															} else if((score * m) == 1) {
																$(result).html('<span>' + score * m + '</span>分，非常不满意');
															}

															$(hidden).val(score * m);
														}
													});
												}
											</script>

											<tr>
												<th>标签：</th>
												<td>
													<input type="hidden" id="tag_select_273" name="comment_tag" value="" />
													<dl class="tags clearfix">
														<dd class="zdy" onclick="show_add_tags(273)">自定义</dd>
													</dl>
													<ul class="tags_zi clearfix" id="tags_zi_273"></ul>
													<div class="add_tags clearfix" id="add_tags_273" style="display:none">
														<input type="text" id="add_tag_text_273" value="" class="inputBg" />
														<input type="button" value="添加" onclick="add_tag_one(273)" class="main-btn" />
														<span onclick="hide_add_tags(273)" class="main-btn">关闭</span>
													</div>
												</td>
											</tr>
											<tr>
												<th>心得：</th>
												<td><textarea name="content" class="comment-textarea" id="content_273"></textarea></td>
											</tr>
											<tr>
												<th>&nbsp;</th>
												<td>
													<input type="submit" class="main-btn main-btn-large fl" value="提交评价" />
													<label class="anonymous-comment"><input type="checkbox" name="hide_username" value="1" />匿名评价 </label>
												</td>
											</tr>
										</table>
									</form>

								</div>
							</td>
						</tr>

					</table>
					<div class="blank"></div>

					<form name="selectPageForm" action="/user.php" method="get">
						<div class="page">
							<div class="page-wrap fr">
								<div class="page-num fl">
									<span class="num prev disabled">
            	<i class="icon"></i>
                <i>上一页</i>
            </span>

									<span class="num curr">1</span>

									<a class="num" href="user.php?act=my_comment&page=2">2</a>

									<a class="num next" href="user.php?act=my_comment&page=2">
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
		<%@include file="foot.jsp" %>

</html>