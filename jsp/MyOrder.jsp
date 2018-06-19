<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="userhead.jsp"%>
<%@include file="userleft.jsp" %>
			<div class="user-right">
				<div class="box">

					<div class="tabmenu">
						<ul class="tab">
							<li class="active">
								<a href="#">我的订单</a>
							</li>
						</ul>
					</div>
					<div id="J_Remide" class="remide-box">
						<h3>我的交易提醒：</h3>
						<ul>
							<li>
								<a href="">未确认订单<span class="num">(2)</span></a>
							</li>
							<li>
								<a href="">待付款<span class="num">(0)</span></a>
							</li>
							<li>
								<a href="user.php?act=order_list&composite_status=101">待发货<span class="num">(10)</span></a>
							</li>
							<li>
								<a href="user.php?act=order_list&composite_status=102">已成交订单数<span class="num">(14)</span></a>
							</li>
						</ul>
					</div>
					<div class="extra-r" style="display:none">
						<div class="search-01">
							<input id="ip_keyword" name="" class="s-itxt" value="商品名称、商品编号、订单编号" onfocus="if (this.value==this.defaultValue) this.value=''" onblur="if (this.value=='') this.value=this.defaultValue" onkeydown="javascript:if(event.keyCode==13) OrderSearch('ip_keyword');" type="text">
							<!--input name="" type="button" value="查 询" class="btn-13" onclick="OrderSearch('ip_keyword')" clstag="click|keycount|orderinfo|search"/-->
							<a href="javascript:;" class="btn-13" onclick="OrderSearch('ip_keyword')" clstag="click|keycount|orderinfo|search">查 询</a>
						</div>
						<div class="blank"></div>
					</div>
					<table width="100%" border="0" cellspacing="0" cellpadding="0" class="bought-table">
						<thead>
							<tr class="col-name">
								<th width="32%" style="border-left: 1px solid #E6E6E6;">宝贝</th>
								<th width="10%">属性</th>
								<th width="9%">单价(元)</th>
								<th width="5%">数量</th>
								<th width="13%">售后</th>
								<th width="8%">订单总金额</th>
								<th width="10%">状态</th>
								<th width="13%" style="border-right: 1px solid #E6E6E6;">操作</th>
							</tr>
						</thead>

						<tbody class="close-order">
							<tr class="sep-row">
								<td colspan="7"></td>
							</tr>
							<tr class="order-hd">
								<td colspan="8"><span class="no">
                  <label> 订单编号：<span class="order-num"><a href="user.php?act=order_detail&order_id=234" class="main-color">2018061291488</a>
                    </span> </label>
									</span> <span class="deal-time">&nbsp;&nbsp;成交时间：2018-06-12 11:54:32</span> <span class="deal-time">&nbsp;&nbsp;商家店铺：伊人化妆品专卖店</span>

									<a href="javascript:chat_online({chat_order_id: '234', chat_supp_id: '6'});" title="联系客服">
										<img src="${ctx}/statics/images/web_logo.png" width="16" height="16" style="vertical-align:top;" /></a>
								</td>
							</tr>
							<tr class="order-bd last">
								<td align="center" class="baobei no-border-right order_goods_info">

									<div class="goods_desc last">
										<a class="pic" href="goods.php?id=135" title="查看宝贝详情" target="_blank">

											<img src="${ctx}/statics/images/135_thumb_G_1437528636775.jpg" alt="查看宝贝详情" width="50" height="50">

										</a>
										<div class="goods_name"> 迪奥真我香水50ml</div>
									</div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_attr">
									<div class="goods_desc goods_desc_t last"> </div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">
									<div class="goods_desc price  last" style="padding-left:0px; line-height:50px;"> ¥810.0 </div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">
									<div class="goods_desc  last" style="padding-left:0px;line-height:50px;"> 1 </div>

								</td>
								<td align="center" class="after-service baobei no-border-right order_goods_info" valign="middle">

									<div class="goods_desc last">

										<p>
											<a href="user.php?act=back_order&order_id=234&goods_id=135&product_id=0" class="main-color">
												申请返修</a>
										</p>

										<a href="user.php?act=message_list">留言/投诉</a>
									</div>

								</td>
								<td rowspan="1" align="center" class="amount no-border-right">
									<p class="post-type"><strong>
                
                				¥820.05                                </strong></p>
								</td>
								<td rowspan="1" align="center" class="trade-status no-border-right">已确认</br>已付款</br>收货确认<br/>
									<a href="user.php?act=order_detail&order_id=234" class="main-color">查看详情</a>

									<div style="position:relative">

										<div onmouseover="showSubNav2('234','中通速递','请输入快递单号');">

											<a href="javascript:;" class="nav_a">物流跟踪</a>
										</div>
										<div id="subNav_234" class="wuliu" style="display:none; position:absolute;">
											<div class="hidden_wuliu" onclick="hiddenSubNav('subNav_234')"></div>
											<ul id='ul_i_234' class="rec-nav">
												<li id="div_i_234_1">
													<a href='javascript:;' onclick="get_invoice_info2('中通速递','请输入快递单号','1','234')">物流1</a>
												</li>
												<li id="div_i_234_2">
													<a href='javascript:;' onclick="get_invoice_info2('中通速递','请输入快递单号','2','234')">物流2</a>
												</li>
											</ul>
											<div id="retData_234"></div>

										</div>
									</div>

								</td>
								<td rowspan="1" align="center" class="other">

									<font class="main-color"><span style="color:red">已完成</span></font>
									</br>

									<a href="user.php?act=my_comment&s=273&order_id=234#commtr_273" class="on_comment">评价</a>
									<br />

									<a href="user.php?act=shaidan_send&id=273" class="on_comment">晒单</a>
									<br />

									<a href="goods.php?id=135" target="_blank">再次购买</a>
								</td>
							</tr>
						</tbody>
						<script language="javascript" type="text/javascript">
							function showSubNav(id) {
								if(id != document.getElementById("s_have_hidden").value) {
									if(document.getElementById("s_have_hidden").value != 0) {
										var s_have_val = document.getElementById("s_have_hidden").value;
										document.getElementById(s_have_val).style.display = 'none';
									}
									document.getElementById(id).style.display = 'block';
									document.getElementById("s_have_hidden").value = id;
								}
							}

							function showSubNav2(id, express_id, express_no) {
								var _id = id;
								var id = 'subNav_' + id;
								if(id != document.getElementById("s_have_hidden").value) {
									if(document.getElementById("s_have_hidden").value != 0) {
										var s_have_val = document.getElementById("s_have_hidden").value;
										document.getElementById(s_have_val).style.display = 'none';
									}
									get_invoice_info2(express_id, express_no, 1, _id);

									document.getElementById(id).style.display = 'block';
									document.getElementById("s_have_hidden").value = id;
								}
							}

							function hiddenSubNav(id) {
								document.getElementById(id).style.display = 'none';
								document.getElementById("s_have_hidden").value = 0;
							}
						</script>

						<tbody class="close-order">
							<tr class="sep-row">
								<td colspan="7"></td>
							</tr>
							<tr class="order-hd">
								<td colspan="8"><span class="no">
                  <label> 订单编号：<span class="order-num"><a href="user.php?act=order_detail&order_id=233" class="main-color">2018061264109</a>
                    </span> </label>
									</span> <span class="deal-time">&nbsp;&nbsp;成交时间：2018-06-12 11:54:15</span> <span class="deal-time">&nbsp;&nbsp;商家店铺：伊人化妆品专卖店</span>

									<a href="javascript:chat_online({chat_order_id: '233', chat_supp_id: '6'});" title="联系客服">
										<img src="=${ctx}/statics/images/web_logo.png" width="16" height="16" style="vertical-align:top;" /></a>
								</td>
							</tr>
							<tr class="order-bd last">
								<td align="center" class="baobei no-border-right order_goods_info">

									<div class="goods_desc last">
										<a class="pic" href="goods.php?id=132" title="查看宝贝详情" target="_blank">

											<img src="${ctx}/statics/images/132_thumb_G_1437528103895.jpg" alt="查看宝贝详情" width="50" height="50">

										</a>
										<div class="goods_name"> 相宜本草红景天3件套（洁面膏100g+精华水120ml+精华乳120g）</div>
									</div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_attr">
									<div class="goods_desc goods_desc_t last"> </div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">
									<div class="goods_desc price  last" style="padding-left:0px; line-height:50px;"> ¥147.0 </div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">
									<div class="goods_desc  last" style="padding-left:0px;line-height:50px;"> 1 </div>

								</td>
								<td align="center" class="after-service baobei no-border-right order_goods_info" valign="middle">

									<div class="goods_desc last">

										<p>
											<a href="user.php?act=back_order&order_id=233&goods_id=132&product_id=0" class="main-color">
												申请返修</a>
										</p>

										<a href="user.php?act=message_list">留言/投诉</a>
									</div>

								</td>
								<td rowspan="1" align="center" class="amount no-border-right">
									<p class="post-type"><strong>
                
                				¥157.05                                </strong></p>
								</td>
								<td rowspan="1" align="center" class="trade-status no-border-right">已确认</br>已付款</br>收货确认<br/>
									<a href="user.php?act=order_detail&order_id=233" class="main-color">查看详情</a>

									<div style="position:relative">

										<div onmouseover="showSubNav2('233','中通速递','请输入快递单号');">

											<a href="javascript:;" class="nav_a">物流跟踪</a>
										</div>
										<div id="subNav_233" class="wuliu" style="display:none; position:absolute;">
											<div class="hidden_wuliu" onclick="hiddenSubNav('subNav_233')"></div>
											<ul id='ul_i_233' class="rec-nav">
												<li id="div_i_233_1">
													<a href='javascript:;' onclick="get_invoice_info2('中通速递','请输入快递单号','1','233')">物流1</a>
												</li>
											</ul>
											<div id="retData_233"></div>

										</div>
									</div>

								</td>
								<td rowspan="1" align="center" class="other">

									<font class="main-color"><span style="color:red">已完成</span></font>
									</br>

									<a href="user.php?act=my_comment&s=272&order_id=233#commtr_272" class="on_comment">评价</a>
									<br />

									<a href="user.php?act=shaidan_send&id=272" class="on_comment">晒单</a>
									<br />

									<a href="goods.php?id=132" target="_blank">再次购买</a>
								</td>
							</tr>
						</tbody>
						<script language="javascript" type="text/javascript">
							function showSubNav(id) {
								if(id != document.getElementById("s_have_hidden").value) {
									if(document.getElementById("s_have_hidden").value != 0) {
										var s_have_val = document.getElementById("s_have_hidden").value;
										document.getElementById(s_have_val).style.display = 'none';
									}
									document.getElementById(id).style.display = 'block';
									document.getElementById("s_have_hidden").value = id;
								}
							}

							function showSubNav2(id, express_id, express_no) {
								var _id = id;
								var id = 'subNav_' + id;
								if(id != document.getElementById("s_have_hidden").value) {
									if(document.getElementById("s_have_hidden").value != 0) {
										var s_have_val = document.getElementById("s_have_hidden").value;
										document.getElementById(s_have_val).style.display = 'none';
									}
									get_invoice_info2(express_id, express_no, 1, _id);

									document.getElementById(id).style.display = 'block';
									document.getElementById("s_have_hidden").value = id;
								}
							}

							function hiddenSubNav(id) {
								document.getElementById(id).style.display = 'none';
								document.getElementById("s_have_hidden").value = 0;
							}
						</script>

						<tbody class="close-order">
							<tr class="sep-row">
								<td colspan="7"></td>
							</tr>
							<tr class="order-hd">
								<td colspan="8"><span class="no">
                  <label> 订单编号：<span class="order-num"><a href="user.php?act=order_detail&order_id=232" class="main-color">2018061235626</a>
                    </span> </label>
									</span> <span class="deal-time">&nbsp;&nbsp;成交时间：2018-06-12 11:53:57</span> <span class="deal-time">&nbsp;&nbsp;商家店铺：伊人化妆品专卖店</span>

									<a href="javascript:chat_online({chat_order_id: '232', chat_supp_id: '6'});" title="联系客服">
										<img src="${ctx}/statics/images/web_logo.png" width="16" height="16" style="vertical-align:top;" /></a>
								</td>
							</tr>
							<tr class="order-bd last">
								<td align="center" class="baobei no-border-right order_goods_info">

									<div class="goods_desc last">
										<a class="pic" href="goods.php?id=134" title="查看宝贝详情" target="_blank">

											<img src="${ctx}/statics/images/134_thumb_G_1437528500701.jpg" alt="查看宝贝详情" width="50" height="50">

										</a>
										<div class="goods_name"> 迪奥新魅惑淡香水5ml</div>
									</div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_attr">
									<div class="goods_desc goods_desc_t last"> </div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">
									<div class="goods_desc price  last" style="padding-left:0px; line-height:50px;"> ¥109.6 </div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">
									<div class="goods_desc  last" style="padding-left:0px;line-height:50px;"> 1 </div>

								</td>
								<td align="center" class="after-service baobei no-border-right order_goods_info" valign="middle">

									<div class="goods_desc last">

										<p>
											<a href="user.php?act=back_order&order_id=232&goods_id=134&product_id=0" class="main-color">
												申请返修</a>
										</p>

										<a href="user.php?act=message_list">留言/投诉</a>
									</div>

								</td>
								<td rowspan="1" align="center" class="amount no-border-right">
									<p class="post-type"><strong>
                
                				¥119.65                                </strong></p>
								</td>
								<td rowspan="1" align="center" class="trade-status no-border-right">已确认</br>已付款</br>收货确认<br/>
									<a href="user.php?act=order_detail&order_id=232" class="main-color">查看详情</a>

									<div style="position:relative">

										<div onmouseover="showSubNav2('232','中通速递','5718416541614654');">

											<a href="javascript:;" class="nav_a">物流跟踪</a>
										</div>
										<div id="subNav_232" class="wuliu" style="display:none; position:absolute;">
											<div class="hidden_wuliu" onclick="hiddenSubNav('subNav_232')"></div>
											<ul id='ul_i_232' class="rec-nav">
												<li id="div_i_232_1">
													<a href='javascript:;' onclick="get_invoice_info2('中通速递','5718416541614654','1','232')">物流1</a>
												</li>
											</ul>
											<div id="retData_232"></div>

										</div>
									</div>

								</td>
								<td rowspan="1" align="center" class="other">

									<font class="main-color"><span style="color:red">已完成</span></font>
									</br>

									<a href="user.php?act=my_comment&s=271&order_id=232#commtr_271" class="on_comment">评价</a>
									<br />

									<a href="user.php?act=shaidan_send&id=271" class="on_comment">晒单</a>
									<br />

									<a href="goods.php?id=134" target="_blank">再次购买</a>
								</td>
							</tr>
						</tbody>
						<script language="javascript" type="text/javascript">
							function showSubNav(id) {
								if(id != document.getElementById("s_have_hidden").value) {
									if(document.getElementById("s_have_hidden").value != 0) {
										var s_have_val = document.getElementById("s_have_hidden").value;
										document.getElementById(s_have_val).style.display = 'none';
									}
									document.getElementById(id).style.display = 'block';
									document.getElementById("s_have_hidden").value = id;
								}
							}

							function showSubNav2(id, express_id, express_no) {
								var _id = id;
								var id = 'subNav_' + id;
								if(id != document.getElementById("s_have_hidden").value) {
									if(document.getElementById("s_have_hidden").value != 0) {
										var s_have_val = document.getElementById("s_have_hidden").value;
										document.getElementById(s_have_val).style.display = 'none';
									}
									get_invoice_info2(express_id, express_no, 1, _id);

									document.getElementById(id).style.display = 'block';
									document.getElementById("s_have_hidden").value = id;
								}
							}

							function hiddenSubNav(id) {
								document.getElementById(id).style.display = 'none';
								document.getElementById("s_have_hidden").value = 0;
							}
						</script>

						<tbody class="close-order">
							<tr class="sep-row">
								<td colspan="7"></td>
							</tr>
							<tr class="order-hd">
								<td colspan="8"><span class="no">
                  <label> 订单编号：<span class="order-num"><a href="user.php?act=order_detail&order_id=231" class="main-color">2018061217057</a>
                    </span> </label>
									</span> <span class="deal-time">&nbsp;&nbsp;成交时间：2018-06-12 11:53:46</span> <span class="deal-time">&nbsp;&nbsp;商家店铺：伊人化妆品专卖店</span>

									<a href="javascript:chat_online({chat_order_id: '231', chat_supp_id: '6'});" title="联系客服">
										<img src="${ctx}/statics/images/web_logo.png" width="16" height="16" style="vertical-align:top;" /></a>
								</td>
							</tr>
							<tr class="order-bd last">
								<td align="center" class="baobei no-border-right order_goods_info">

									<div class="goods_desc last">
										<a class="pic" href="goods.php?id=158" title="查看宝贝详情" target="_blank">

											<img src="${ctx}/statics/images/158_thumb_G_1437530565110.jpg" alt="查看宝贝详情" width="50" height="50">

										</a>
										<div class="goods_name"> L’OREAL/欧莱雅 精油润养洗发露700ml</div>
									</div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_attr">
									<div class="goods_desc goods_desc_t last"> </div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">
									<div class="goods_desc price  last" style="padding-left:0px; line-height:50px;"> ¥34.0 </div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">
									<div class="goods_desc  last" style="padding-left:0px;line-height:50px;"> 1 </div>

								</td>
								<td align="center" class="after-service baobei no-border-right order_goods_info" valign="middle">

									<div class="goods_desc last">

										<p>
											<a href="user.php?act=back_order&order_id=231&goods_id=158&product_id=0" class="main-color">
												申请返修</a>
										</p>

										<a href="user.php?act=message_list">留言/投诉</a>
									</div>

								</td>
								<td rowspan="1" align="center" class="amount no-border-right">
									<p class="post-type"><strong>
                
                				¥44.00                                </strong></p>
								</td>
								<td rowspan="1" align="center" class="trade-status no-border-right">已确认</br>已付款</br>收货确认<br/>
									<a href="user.php?act=order_detail&order_id=231" class="main-color">查看详情</a>

									<div style="position:relative">

										<div onmouseover="showSubNav2('231','中通速递','5718416541614654');">

											<a href="javascript:;" class="nav_a">物流跟踪</a>
										</div>
										<div id="subNav_231" class="wuliu" style="display:none; position:absolute;">
											<div class="hidden_wuliu" onclick="hiddenSubNav('subNav_231')"></div>
											<ul id='ul_i_231' class="rec-nav">
												<li id="div_i_231_1">
													<a href='javascript:;' onclick="get_invoice_info2('中通速递','5718416541614654','1','231')">物流1</a>
												</li>
											</ul>
											<div id="retData_231"></div>

										</div>
									</div>

								</td>
								<td rowspan="1" align="center" class="other">

									<font class="main-color"><span style="color:red">已完成</span></font>
									</br>

									<a href="user.php?act=my_comment&s=270&order_id=231#commtr_270" class="on_comment">评价</a>
									<br />

									<a href="user.php?act=shaidan_send&id=270" class="on_comment">晒单</a>
									<br />

									<a href="goods.php?id=158" target="_blank">再次购买</a>
								</td>
							</tr>
						</tbody>
						<script language="javascript" type="text/javascript">
							function showSubNav(id) {
								if(id != document.getElementById("s_have_hidden").value) {
									if(document.getElementById("s_have_hidden").value != 0) {
										var s_have_val = document.getElementById("s_have_hidden").value;
										document.getElementById(s_have_val).style.display = 'none';
									}
									document.getElementById(id).style.display = 'block';
									document.getElementById("s_have_hidden").value = id;
								}
							}

							function showSubNav2(id, express_id, express_no) {
								var _id = id;
								var id = 'subNav_' + id;
								if(id != document.getElementById("s_have_hidden").value) {
									if(document.getElementById("s_have_hidden").value != 0) {
										var s_have_val = document.getElementById("s_have_hidden").value;
										document.getElementById(s_have_val).style.display = 'none';
									}
									get_invoice_info2(express_id, express_no, 1, _id);

									document.getElementById(id).style.display = 'block';
									document.getElementById("s_have_hidden").value = id;
								}
							}

							function hiddenSubNav(id) {
								document.getElementById(id).style.display = 'none';
								document.getElementById("s_have_hidden").value = 0;
							}
						</script>

						<tbody class="close-order">
							<tr class="sep-row">
								<td colspan="7"></td>
							</tr>
							<tr class="order-hd">
								<td colspan="8"><span class="no">
                  <label> 订单编号：<span class="order-num"><a href="user.php?act=order_detail&order_id=230" class="main-color">2018061253536</a>
                    </span> </label>
									</span> <span class="deal-time">&nbsp;&nbsp;成交时间：2018-06-12 11:53:36</span> <span class="deal-time">&nbsp;&nbsp;商家店铺：伊人化妆品专卖店</span>

									<a href="javascript:chat_online({chat_order_id: '230', chat_supp_id: '6'});" title="联系客服">
										<img src="${ctx}/statics/images/web_logo.png" width="16" height="16" style="vertical-align:top;" /></a>
								</td>
							</tr>
							<tr class="order-bd last">
								<td align="center" class="baobei no-border-right order_goods_info">

									<div class="goods_desc last">
										<a class="pic" href="goods.php?id=144" title="查看宝贝详情" target="_blank">

											<img src="${ctx}/statics/images/144_thumb_G_1437529582625.jpg" alt="查看宝贝详情" width="50" height="50">

										</a>
										<div class="goods_name"> CK卡文克莱卡莱优淡香水100ML ck香水</div>
									</div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_attr">
									<div class="goods_desc goods_desc_t last"> </div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">
									<div class="goods_desc price  last" style="padding-left:0px; line-height:50px;"> ¥101.1 </div>

								</td>
								<td align="center" class="baobei no-border-right order_goods_info" style="padding:0px;">
									<div class="goods_desc  last" style="padding-left:0px;line-height:50px;"> 1 </div>

								</td>
								<td align="center" class="after-service baobei no-border-right order_goods_info" valign="middle">

									<div class="goods_desc last">

										<p>
											<a href="user.php?act=back_order&order_id=230&goods_id=144&product_id=0" class="main-color">
												申请返修</a>
										</p>

										<a href="user.php?act=message_list">留言/投诉</a>
									</div>

								</td>
								<td rowspan="1" align="center" class="amount no-border-right">
									<p class="post-type"><strong>
                
                				¥111.15                                </strong></p>
								</td>
								<td rowspan="1" align="center" class="trade-status no-border-right">已确认</br>已付款</br>收货确认<br/>
									<a href="user.php?act=order_detail&order_id=230" class="main-color">查看详情</a>

									<div style="position:relative">

										<div onmouseover="showSubNav2('230','中通速递','5718416541614654');">

											<a href="javascript:;" class="nav_a">物流跟踪</a>
										</div>
										<div id="subNav_230" class="wuliu" style="display:none; position:absolute;">
											<div class="hidden_wuliu" onclick="hiddenSubNav('subNav_230')"></div>
											<ul id='ul_i_230' class="rec-nav">
												<li id="div_i_230_1">
													<a href='javascript:;' onclick="get_invoice_info2('中通速递','5718416541614654','1','230')">物流1</a>
												</li>
											</ul>
											<div id="retData_230"></div>

										</div>
									</div>

								</td>
								<td rowspan="1" align="center" class="other">

									<font class="main-color"><span style="color:red">已完成</span></font>
									</br>

									<a href="user.php?act=my_comment&s=269&order_id=230#commtr_269" class="on_comment">评价</a>
									<br />

									<a href="user.php?act=shaidan_send&id=269" class="on_comment">晒单</a>
									<br />

									<a href="goods.php?id=144" target="_blank">再次购买</a>
								</td>
							</tr>
						</tbody>
						<script language="javascript" type="text/javascript">
							function showSubNav(id) {
								if(id != document.getElementById("s_have_hidden").value) {
									if(document.getElementById("s_have_hidden").value != 0) {
										var s_have_val = document.getElementById("s_have_hidden").value;
										document.getElementById(s_have_val).style.display = 'none';
									}
									document.getElementById(id).style.display = 'block';
									document.getElementById("s_have_hidden").value = id;
								}
							}

							function showSubNav2(id, express_id, express_no) {
								var _id = id;
								var id = 'subNav_' + id;
								if(id != document.getElementById("s_have_hidden").value) {
									if(document.getElementById("s_have_hidden").value != 0) {
										var s_have_val = document.getElementById("s_have_hidden").value;
										document.getElementById(s_have_val).style.display = 'none';
									}
									get_invoice_info2(express_id, express_no, 1, _id);

									document.getElementById(id).style.display = 'block';
									document.getElementById("s_have_hidden").value = id;
								}
							}

							function hiddenSubNav(id) {
								document.getElementById(id).style.display = 'none';
								document.getElementById("s_have_hidden").value = 0;
							}
						</script>

					</table>
					<script type="text/javascript">
						$(function() {
							$('.order_goods_info').find('.goods_desc').each(function() {
								$(this).css('height', $(this).parents('.order_goods_info').siblings('.order_goods_attr').find('.goods_desc').eq($(this).index()).height());
							});
						})
					</script>
					<input id="s_have_hidden" value="0" type="hidden" />
					<div style="height:30px;line-heihgt:30px;clear:both"></div>
					<form name="selectPageForm" action="/user.php" method="get">
						<div class="page">
							<div class="page-wrap fr">
								<div class="page-num fl">
									<span class="num prev disabled">
            	<i class="icon"></i>
                <i>上一页</i>
            </span>

									<span class="num curr">1</span>

									<a class="num" href="user.php?act=order_list&composite_status=-1&page=2">2</a>

									<a class="num" href="user.php?act=order_list&composite_status=-1&page=3">3</a>

									<a class="num" href="user.php?act=order_list&composite_status=-1&page=4">4</a>

									<a class="num" href="user.php?act=order_list&composite_status=-1&page=5">5</a>

									<a class="num" href="user.php?act=order_list&composite_status=-1&page=6">6</a>

									<a class="num" href="user.php?act=order_list&composite_status=-1&page=7">7</a>

									<a class="num" href="user.php?act=order_list&composite_status=-1&page=8">8</a>

									<a class="num" href="user.php?act=order_list&composite_status=-1&page=9">9</a>

									<a class="num" href="user.php?act=order_list&composite_status=-1&page=10">10</a>

									<a class="num next" href="user.php?act=order_list&composite_status=-1&page=2">
										<i>下一页</i>
										<i class="icon"></i>
									</a>
								</div>

								<div class="total">共 15 页 ，</div>

								<div class="form fl">
									<span class="text">到第</span>

									<input type="hidden" name="act" value="order_list" />

									<input type="hidden" name="composite_status" value="-1" />

									<kbd style="float:left;">
      <input type="text" name="page" onkeydown="if(event.keyCode==13)selectPage(this)" size="3" class="input"/>
      </kbd>
									<span class="text">页</span>
								</div>

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
					<div style="height:30px;line-heihgt:30px;clear:both"></div>

				</div>
			</div>
		</div>
		<%@include file="foot.jsp" %>
</html>