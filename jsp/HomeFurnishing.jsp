<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="userhead.jsp"%>
		<script type="text/javascript">
			//<![CDATA[
			function checkSearchForm() {
				if(document.getElementById('keyword').value) {
					var frm = document.getElementById('searchForm');
					var type = parseInt(document.getElementById('searchtype').value);
					frm.action = type == 0 ? 'search.php' : 'stores.php';
					return true;
				} else {
					alert("请输入关键词！");
					return false;
				}
			}

			function myValue1() {
				document.getElementById('keyword').value = "请输入商品名称或编号...";
			}

			function myValue2() {
				document.getElementById('keyword').value = "";
			}
			//]]>
			$('.search-type li').click(function() {
				$(this).addClass('cur').siblings().removeClass('cur');
				$('#searchtype').val($(this).attr('num'));
			});
			$(function() {
				//图片放大效果
				$(".header-right img").bubbleup({
					scale: 100
				});

				//头部搜索
				$('.search-type').hover(function() {
					$(this).css({
						"height": "auto",
						"overflow": "visible"
					});
				}, function() {
					$(this).css({
						"height": 32,
						"overflow": "hidden"
					});
				});

			});

			function _show_(h, b) {
				if(!h) {
					return
				}
				if(b && b.source && b.target) {
					var d = (typeof b.source == "string") ? M.$("#" + b.source) : b.source;
					var e = (typeof b.target == "string") ? M.$("#" + b.target) : b.target;
					if(d && e && !e.isDone) {
						e.innerHTML = d.value;
						d.parentNode.removeChild(d);
						if(typeof b.callback == "function") {
							b.callback()
						}
						e.isDone = true
					}
				}
				M.addClass(h, "hover");
				if(b && b.isLazyLoad && h.isDone) {
					var g = h.find("img");
					for(var a = 0, c = g.length; a < c; a++) {
						var f = g[a].getAttribute("data-src_index_menu");
						if(f) {
							g[a].setAttribute("src", f);
							g[a].removeAttribute("data-src_index_menu")
						}
					}
					h.isDone = true
				}
			}

			function _hide_(a) {
				if(!a) {
					return
				}
				if(a.className.indexOf("hover") > -1) {
					M.removeClass(a, "hover")
				}
			}
		</script>
		<script type="text/javascript" src="${ctx}/stiatics/js/nav.js"></script>
		<div class="blank"></div>
		<div class="w1210">
			<div id="hotsale">
				<div class="hd">热卖推荐</div>
				<div class="mc">
					<dl>
						<dt><a target="_blank" href="#"><img src="${ctx}/statics/images/231_thumb_G_1437587773545.jpg" width="100" height="100" alt="可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套"></a></dt>
						<dd>
							<div class="p-name">
								<a target="_blank" href="#">可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐...</a>
							</div>
							<div class="p-price">特价：
								<font class="shop-price">
									¥84.1 </font>
							</div>
							<div class="btns">
								<a target="_blank" href="#">查看详情</a>
							</div>
						</dd>
					</dl>
					<dl>
						<dt><a target="_blank" href="#"><img src="${ctx}/statics/images/225_thumb_G_1437587108986.jpg" width="100" height="100" alt="樱之歌 52头 紫玉情缘 餐具套装"></a></dt>
						<dd>
							<div class="p-name">
								<a target="_blank" href="#">樱之歌 52头 紫玉情缘 餐具套装</a>
							</div>
							<div class="p-price">特价：
								<font class="shop-price">
									¥203.1 </font>
							</div>
							<div class="btns">
								<a target="_blank" href="#">查看详情</a>
							</div>
						</dd>
					</dl>
					<dl>
						<dt><a target="_blank" href="#"><img src="${ctx}/statics/images/_thumb_P_1438047501681.jpg" width="100" height="100" alt="包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松"></a></dt>
						<dd>
							<div class="p-name">
								<a target="_blank" href="#">包邮 新款户外军迷阿帕奇T恤 纯棉男款短...</a>
							</div>
							<div class="p-price">特价：
								<font class="shop-price">
									¥232.9 </font>
							</div>
							<div class="btns">
								<a target="_blank" href="#">查看详情</a>
							</div>
						</dd>
					</dl>
					<dl>
						<dt><a target="_blank" href="#"><img src="${ctx}/statics/images/226_thumb_G_1437587179362.jpg" width="100" height="100" alt="亿嘉IJARL 时尚陶瓷28头韩式骨瓷餐具套装 东洋之心"></a></dt>
						<dd>
							<div class="p-name">
								<a target="_blank" href="#">亿嘉IJARL 时尚陶瓷28头韩式骨瓷餐...</a>
							</div>
							<div class="p-price">特价：
								<font class="shop-price">
									¥203.1 </font>
							</div>
							<div class="btns">
								<a target="_blank" href="#">查看详情</a>
							</div>
						</dd>
					</dl>
				</div>
			</div>
			<div class="w">
				<div class="breadcrumb clearfix">
					<a href="#">首页</a> <span class="crumbs-arrow">&gt;</span>
					<div class="crumbs-nav crumbs-nav0">
						<a class="crumbs-title" href="#">家居、家具、家装、厨具<i class="icon"></i></a>
						<div class="crumbs-drop">
							<ul class="crumbs-drop-list">
								<li>
									<a href="#">食品、酒类、生鲜、特产</a>
								</li>
								<li>
									<a href="#">男装、女装、内衣、珠宝</a>
								</li>
								<li>
									<a href="#">个护化妆、清洁用品</a>
								</li>
								<li>
									<a href="#">手机、数码、通信</a>
								</li>
								<li>
									<a href="#">家用电器</a>
								</li>
								<li>
									<a href="#">家居、家具、家装、厨具</a>
								</li>
								<li>
									<a href="#">酒类饮料</a>
								</li>
								<li>
									<a href="#">母婴、玩具乐器</a>
								</li>
								<li>
									<a href="#">虚拟商品</a>
								</li>
								<li>
									<a href="#">电脑、办公</a>
								</li>
								<li>
									<a href="#">鞋靴、箱包、钟表、奢侈品</a>
								</li>
								<li>
									<a href="#">运动户外</a>
								</li>
								<li>
									<a href="#">汽车、汽车用品</a>
								</li>
								<li>
									<a href="#">营养保健</a>
								</li>
								<li>
									<a href="#">图书、音像、电子书</a>
								</li>
								<li>
									<a href="#">彩票、旅行、充值、票务</a>
								</li>
								<li>
									<a href="#">理财、众筹、白条、保险</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="blank"></div>
			<script>
				$(function() {
					$('.breadcrumb .crumbs-nav').hover(function() {
						$(this).toggleClass('curr');
					})
				})
			</script>

			<script type="text/javascript">
				var begin_hidden = 0;

				function init_position_left() {
					var kuan1 = document.getElementById('attr-list-ul').clientWidth;
					var kuan2 = document.getElementById('attr-group-more').clientWidth;
					var kuan = (kuan1 - kuan2) / 2;
					document.getElementById('attr-group-more').style.marginLeft = kuan + "px";
				}

				function getElementsByName(tagName, eName) {
					var tags = document.getElementsByTagName(tagName);
					var returns = new Array();
					if(tags != null && tags.length > 0) {
						for(var i = 0; i < tags.length; i++) {
							if(tags[i].getAttribute("name") == eName) {
								returns[returns.length] = tags[i];
							}
						}
					}
					return returns;
				}

				function Show_More_Attrgroup() {
					var attr_list_dl = getElementsByName('dl', 'attr-group-dl');
					var attr_group_more_text = document.getElementById('attr-group-more-text');
					if(begin_hidden == 2) {
						for(var i = 0; i < attr_list_dl.length; i++) {
							attr_list_dl[i].style.display = i >= begin_hidden ? 'none' : 'block';
						}
						attr_group_more_text.innerHTML = "更多选项（" + attr_group_more_txt + "）";
						init_position_left();
						begin_hidden = 0;
					} else {
						for(var i = 0; i < attr_list_dl.length; i++) {
							attr_list_dl[i].style.display = 'block';
						}
						attr_group_more_text.innerHTML = "收起";
						init_position_left();
						begin_hidden = 2;
					}
				}
				// 是否显示“更多”__初始化
				function init_more(boxid, moreid, height) {
					var obj_brand = document.getElementById(boxid);
					var more_brand = document.getElementById(moreid);
					if(obj_brand.clientHeight > height) {
						obj_brand.style.height = height + "px";
						obj_brand.style.overflow = "hidden";
						more_brand.innerHTML = '<a href="#">更多</a>';
					}
				}

				function slideDiv(thisobj, divID, Height) {
					var obj = document.getElementById(divID).style;
					if(obj.height == "") {
						obj.height = Height + "px";
						obj.overflow = "hidden";
						thisobj.innerHTML = "更多";
						thisobj.className = "more-wrzc-1";
						// 如果是品牌，额外处理
						if(divID == 'brand-abox') {
							//obj.width="456px";
							getBrand_By_Zimu(document.getElementById('brand-zimu-all'), '');
							document.getElementById('brand-sobox').style.display = "none";
							document.getElementById('brand-zimu').style.display = "none";
							document.getElementById('brand-abox-father').className = "";
						}
					} else {
						obj.height = "";
						obj.overflow = "";
						thisobj.innerHTML = "收起";
						thisobj.className = "more-wrzc-2";
						// 如果是品牌，额外处理
						if(divID == 'brand-abox') {
							//obj.width="456px";
							document.getElementById('brand-sobox').style.display = "block";
							document.getElementById('brand-zimu').style.display = "block";
							//getBrand_By_Zimu(document.getElementById('brand-zimu-all'),'');
							document.getElementById('brand-abox-father').className = "brand-more-wygk";
						}
					}
				}

				function getBrand_By_Name(val) {
					val = val.toLocaleLowerCase();
					var brand_list = document.getElementById('brand-abox').getElementsByTagName('li');
					for(var i = 0; i < brand_list.length; i++) {
						//document.getElementById('brand-abox').style.width="auto";
						var name_attr_value = brand_list[i].getAttribute("name").toLocaleLowerCase();
						if(brand_list[i].title.indexOf(val) == 0 || name_attr_value.indexOf(val) == 0 || val == '') {
							brand_list[i].style.display = 'block';
						} else {
							brand_list[i].style.display = 'none';
						}
					}
				}
				//点击字母切换品牌
				function getBrand_By_Zimu(obj, zimu) {
					document.getElementById('brand-sobox-input').value = "可搜索拼音、汉字查找品牌";
					obj.focus();
					var brand_zimu = document.getElementById('brand-zimu');
					var zimu_span_list = brand_zimu.getElementsByTagName('span');
					for(var i = 0; i < zimu_span_list.length; i++) {
						zimu_span_list[i].className = '';
					}
					var thisspan = obj.parentNode;
					thisspan.className = 'span';
					var brand_list = document.getElementById('brand-abox').getElementsByTagName('li');
					for(var i = 0; i < brand_list.length; i++) {
						//document.getElementById('brand-abox').style.width="auto";
						if(brand_list[i].getAttribute('rel') == zimu || zimu == '') {
							brand_list[i].style.display = 'block';
						} else {
							brand_list[i].style.display = 'none';
						}
					}
				}
				var duoxuan_a_valid = new Array();
				// 点击多选， 显示多选区
				function showDuoXuan(dx_divid, a_valid_id) {
					var dx_dl_wrzc = document.getElementById('attr-list-ul').getElementsByTagName('dl');
					for(var i = 0; i < dx_dl_wrzc.length; i++) {
						dx_dl_wrzc[i].className = '';
						dx_dl_wrzc[0].className = 'selected-attr-dl';
					}
					var dxDiv = document.getElementById(dx_divid);
					dxDiv.className = "duoxuan";
					duoxuan_a_valid[a_valid_id] = 1;

				}

				function hiddenDuoXuan(dx_divid, a_valid_id) {
					var dxDiv = document.getElementById(dx_divid);
					dxDiv.className = "";
					duoxuan_a_valid[a_valid_id] = 0;
					if(a_valid_id == 'brand') {
						var ul_obj_wrzc = document.getElementById('brand-abox');
						var li_list_wrzc = ul_obj_wrzc.getElementsByTagName('li');
						if(li_list_wrzc) {
							for(var j = 0; j < li_list_wrzc.length; j++) {
								li_list_wrzc[j].className = "";
							}
						}
					} else {
						var ul_obj_wrzc = document.getElementById('attr-abox-' + a_valid_id);
					}
					var input_list = ul_obj_wrzc.getElementsByTagName('input');
					var span_list = ul_obj_wrzc.getElementsByTagName('span');
					for(var j = 0; j < input_list.length; j++) {
						input_list[j].checked = false;
					}
					if(span_list.length) {
						for(var j = 0; j < span_list.length; j++) {
							span_list[j].className = "color-wygk";
						}
					}
				}

				function duoxuan_Onclick(a_valid_id, idid, thisobj) {
					if(duoxuan_a_valid[a_valid_id]) {
						if(thisobj) {
							var fatherObj = thisobj.parentNode;
							if(a_valid_id == "brand") {
								fatherObj.className = fatherObj.className == "brand-seled" ? "" : "brand-seled";
							} else {
								fatherObj.className = fatherObj.className == "color-wygk" ? "color-wygk-seled" : "color-wygk";
							}
						}
						document.getElementById('chk-' + a_valid_id + '-' + idid).checked = !document.getElementById('chk-' + a_valid_id + '-' + idid).checked;
						return false;
					}
				}

				function duoxuan_Submit(dxid, indexid, attr_count, category, brand_id, price_min, price_max, filter_attr, filter) {
					var theForm = document.forms['theForm'];
					var chklist = theForm.elements['checkbox_' + dxid + '[]'];
					var newpara = "";
					var mm = 0;
					for(var k = 0; k < chklist.length; k++) {
						if(chklist[k].checked) {
							//alert(chklist[k].value);
							newpara += mm > 0 ? "_" : "";
							newpara += chklist[k].value;
							mm++;
						}
					}
					if(mm == 0) {
						return false;
					}
					if(dxid == 'brand') {
						brand_id = newpara;
					} else {
						var attr_array = new Array();
						filter_attr = filter_attr.replace(/\./g, ",");
						attr_array = filter_attr.split(',');
						for(var h = 0; h < attr_count; h++) {
							if(indexid == h) {
								attr_array[indexid] = newpara;
							} else {
								if(attr_array[h]) {} else {
									attr_array[h] = 0;
								}
							}
						}
						filter_attr = attr_array.toString();
					}
					filter_attr = filter_attr.replace(/,/g, ".");
					var url = "other.php";
					//var url="category.php";
					url += "?id=" + category;
					url += brand_id ? "&brand=" + brand_id : "";
					url += price_min ? "&price_min=" + price_min : "&price_min=0";
					url += price_max ? "&price_max=" + price_max : "&price_max=0";
					url += filter_attr ? "&filter_attr=" + filter_attr : "&filter_attr=0";
					url += filter ? "&filter=" + filter : "&filter=0";
					//location.href=url;
					return_url(url, dxid);
				}

				function return_url(url, dxid) {
					$.ajax({
						url: url,
						type: 'get',
						cache: false,
						dataType: 'text',
						success: function(data) {
							var obj = document.getElementById('button-' + dxid);
							obj.href = data;
							obj.click();
							//location.href=data;
						}
					});
				}
			</script>
			<form action="http://b2b2c.wygk.cn/" method="post" name="theForm">
				<div class="box-attr-wygk" id="attr-list-ul">

					<dl style="border-top:none;" id="attr-group-dl-brand">
						<dt>品牌：</dt>
						<dd class="moredd">
							<label id="brand-more"></label>
							<label><a href="#"><font class="duo-b">+</font>多选</a> </label>
						</dd>
						<dd>
							<div id="brand-sobox" style="display:none;">
								<input type="text" id="brand-sobox-input" value="可搜索拼音、汉字查找品牌" onfocus="if(this.value==&#39;可搜索拼音、汉字查找品牌&#39;) {this.value=&#39;&#39;}" onblur="if (this.value==&#39;&#39;) {this.value=&#39;可搜索拼音、汉字查找品牌&#39;}" onkeyup="getBrand_By_Name(this.value);">
							</div>
							<div id="brand-zimu" class="clearfix" style="display:none;"><span class="span"><a href="#">所有品牌</a><b></b></span> <span><a href="#">A</a><b></b></span><span><a href="#">D</a><b></b></span><span><a href="#">G</a><b></b></span><span><a href="#">H</a><b></b></span><span><a href="#">L</a><b></b></span><span><a href="#">M</a><b></b></span><span><a href="#">Q</a><b></b></span><span><a href="#">S</a><b></b></span></div>
							<div id="brand-abox-father">
								<ul id="brand-abox" class="brand-abox-imgul">

									<li title="Dior" name="Dior" rel="D">
										<input type="checkbox" style="display:none;" name="checkbox_brand[]" id="chk-brand-2" value="6">
										<a href="#"> <img src="${ctx}/statics/images/1437428980225446797.jpg" width="100" height="40"><i></i></a>
									</li>

									<li title="MISS FACE" name="MISS_FACE" rel="M">
										<input type="checkbox" style="display:none;" name="checkbox_brand[]" id="chk-brand-3" value="11">
										<a href="#"> <img src="${ctx}/statics/images/1437429301820829673.jpg" width="100" height="40"><i></i></a>
									</li>

									<li title="楼兰密语" name="loulanmiyu" rel="L">
										<input type="checkbox" style="display:none;" name="checkbox_brand[]" id="chk-brand-4" value="48">
										<a href="#"> <img src="${ctx}/statics/images/1437431622196514430.jpg" width="100" height="40"><i></i></a>
									</li>

									<li title="猫人" name="miaoren" rel="M">
										<input type="checkbox" style="display:none;" name="checkbox_brand[]" id="chk-brand-5" value="52">
										<a href="#"> <img src="${ctx}/statics/images/1437432522356081645.jpg" width="100" height="40"><i></i></a>
									</li>

									<li title="稻草人" name="daocaoren" rel="D">
										<input type="checkbox" style="display:none;" name="checkbox_brand[]" id="chk-brand-6" value="62">
										<a href="#"> <img src="${ctx}/statics/images/1437432889680565833.jpg" width="100" height="40"><i></i></a>
									</li>

									<li title="爱华仕" name="aihuashi" rel="A">
										<input type="checkbox" style="display:none;" name="checkbox_brand[]" id="chk-brand-7" value="65">
										<a href="#"> <img src="${ctx}/statics/images/1437432919534972670.jpg" width="100" height="40"><i></i></a>
									</li>

									<li title="格兰仕" name="gelanshi" rel="G">
										<input type="checkbox" style="display:none;" name="checkbox_brand[]" id="chk-brand-8" value="71">
										<a href="#"> <img src="${ctx}/statics/images/1437433840630073088.jpg" width="100" height="40"><i></i></a>
									</li>

									<li title="罗莱" name="luolai" rel="L" class="bottom">
										<input type="checkbox" style="display:none;" name="checkbox_brand[]" id="chk-brand-9" value="78">
										<a href="#"> <img src="${ctx}/statics/images/1437434636974815215.jpg" width="100" height="40"><i></i></a>
									</li>

									<li title="慧乐家" name="huilejia" rel="H" class="bottom">
										<input type="checkbox" style="display:none;" name="checkbox_brand[]" id="chk-brand-10" value="81">
										<a href="#"> <img src="${ctx}/statics/images/1437434929995564906.jpg" width="100" height="40"><i></i></a>
									</li>

									<li title="水星家纺" name="shuixingjiafang" rel="S" class="bottom">
										<input type="checkbox" style="display:none;" name="checkbox_brand[]" id="chk-brand-11" value="83">
										<a href="#"> <img src="${ctx}/statics/images/1437436852699771679.jpg" width="100" height="40"><i></i></a>
									</li>

									<li title="全有家居" name="quanyoujiaji" rel="Q" class="bottom">
										<input type="checkbox" style="display:none;" name="checkbox_brand[]" id="chk-brand-12" value="84">
										<a href="#"> <img src="${ctx}/statics/images/1437436872931901715.jpg" width="100" height="40"><i></i></a>
									</li>

								</ul>
							</div>
							<div class="duoxuan-btnbox">
								<a id="button-brand"></a>
								<a class="select-button disabled" onclick="duoxuan_Submit(&#39;brand&#39;,0,&#39;&#39;,&#39;6&#39;,&#39;0&#39;, &#39;0&#39;, &#39;0&#39;, &#39;0&#39;,&#39;&#39;);">确定</a>
								<a href="#">取消</a>
							</div>
						</dd>
					</dl>
					<script type="text/javascript">
						duoxuan_a_valid['brand'] = 0;
						init_more('brand-abox', 'brand-more', '83');
						$('#brand-abox li').click(function() {
							var seled_num = $(this).parent().find('.brand-seled').length;
							if(seled_num > 0) {
								$(this).parents('dd').find('.select-button').eq(0).attr('class', 'select-button select-button-sumbit');
							} else if(seled_num == 0) {
								$(this).parents('dd').find('.select-button').eq(0).attr('class', 'select-button disabled');
							}
						})
					</script>

					<dl>
						<dt>价格：</dt>
						<dd class="moredd">&nbsp;</dd>
						<dd>
							<ul>

								<li>
									<a href="#">0&nbsp;-&nbsp;1000</a>
								</li>

								<li>
									<a href="#">1000&nbsp;-&nbsp;2000</a>
								</li>

								<li>
									<a href="#">2000&nbsp;-&nbsp;3000</a>
								</li>

								<li>
									<a href="#">3000&nbsp;-&nbsp;4000</a>
								</li>

								<li>
									<a href="#">4000&nbsp;-&nbsp;5000</a>
								</li>

								<li>

									<input type="text" name="price_min" id="price_min" value="0" class="price-wrzc" onkeyup="this.value=this.value.replace(/\D/g,&#39;&#39;)" onafterpaste="this.value=this.value.replace(/\D/g,&#39;&#39;)" autocomplete="off">
									<i></i>
									<input type="text" name="price_max" id="price_max" value="0" class="price-wrzc" onkeyup="this.value=this.value.replace(/\D/g,&#39;&#39;)" onafterpaste="this.value=this.value.replace(/\D/g,&#39;&#39;)" autocomplete="off">

									<a class="select-button" href="#">确定</a>
								</li>
							</ul>
						</dd>
					</dl>

				</div>

				<script type="text/javascript">
					init_position_left();
				</script>
			</form>
			<script type="text/javascript">
				$(function() {
					$('.color-wygk-li span').click(function() {
						var seled_num = $(this).parents('ul').find('.color-wygk-seled').length;
						if(seled_num > 0) {
							$(this).parents('dd').find('.select-button').eq(0).attr('class', 'select-button select-button-sumbit');
						} else if(seled_num == 0) {
							$(this).parents('dd').find('.select-button').eq(0).attr('class', 'select-button disabled');
						}
					})
					$('.other-wygk-li input[type="checkbox"]').bind('click', function() {
						var seled_input_num = $(this).parents('ul').find('input[type="checkbox"]:checked').length;
						if(seled_input_num > 0) {
							$(this).parents('dd').find('.select-button').eq(0).attr('class', 'select-button select-button-sumbit');
						} else if(seled_input_num == 0) {
							$(this).parents('dd').find('.select-button').eq(0).attr('class', 'select-button disabled');
						}
					})
				})
			</script>

			<div class="blank15"></div>
			<div class="content-wrap category-wrap clearfix">
				<div class="aside">
					<span class="slide-aside"></span>
					<div class="aside-inner">
						<div class="aside-con">
							<h2 class="aside-tit">新品推荐</h2>
							<ul class="aside-list">

								<li>
									<div class="p-img">
										<a target="_blank" title="优雅100 经典设计款全棉斜纹印花四件套" href="#"><img alt="优雅100 经典设计款全棉斜纹印花四件套" data-original="images/201507/thumb_${ctx}/statics/images/139_thumb_G_1437528892306.jpg" src="${ctx}/statics/images/139_thumb_G_1437528892306.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="优雅100 经典设计款全棉斜纹印花四件套" href="#">优雅100 经典设计款全棉斜纹印花四件套</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥160.6</span>
										<span class="market-price"><del>¥226.7</del></span>
									</div>
								</li>

								<li>
									<div class="p-img">
										<a target="_blank" title="LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基" href="#"><img alt="LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基" data-original="images/201507/thumb_${ctx}/statics/images/137_thumb_G_1437528855059.jpg" src="${ctx}/statics/images/137_thumb_G_1437528855059.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基" href="#">LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥339.1</span>
										<span class="market-price"><del>¥478.7</del></span>
									</div>
								</li>

								<li>
									<div class="p-img">
										<a target="_blank" title="雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床" href="#"><img alt="雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床" data-original="images/201507/thumb_${ctx}/statics/images/140_thumb_G_1437528915082.jpg" src="${ctx}/statics/images/140_thumb_G_1437528915082.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床" href="#">雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥283.0</span>
										<span class="market-price"><del>¥399.5</del></span>
									</div>
								</li>

								<li>
									<div class="p-img">
										<a target="_blank" title="Jaka蝴蝶夫人浮雕陶瓷分层水果盘 点心盘子 双层三层 多款可选" href="#"><img alt="Jaka蝴蝶夫人浮雕陶瓷分层水果盘 点心盘子 双层三层 多款可选" data-original="images/201507/thumb_${ctx}/statics/images/229_thumb_G_1437587547996.jpg" src="${ctx}/statics/images/229_thumb_G_1437587547996.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="Jaka蝴蝶夫人浮雕陶瓷分层水果盘 点心盘子 双层三层 多款可选" href="#">Jaka蝴蝶夫人浮雕陶瓷分层水果盘 点心盘子 双层三层 多款可选</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥98.6</span>
										<span class="market-price"><del>¥139.2</del></span>
									</div>
								</li>

								<li>
									<div class="p-img">
										<a target="_blank" title="可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套" href="#"><img alt="可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套" data-original="images/201507/thumb_${ctx}/statics/images/231_thumb_G_1437587773545.jpg" src="${ctx}/statics/images/231_thumb_G_1437587773545.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套" href="#">可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥84.1</span>
										<span class="market-price"><del>¥118.8</del></span>
									</div>
								</li>

							</ul>
						</div>

						<div class="aside-con">
							<h2 class="aside-tit">销量排行榜</h2>
							<ul class="aside-list">
								<li>
									<div class="p-img">
										<a target="_blank" title="" href="#"><img alt="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机" data-original="images/201507/thumb_${ctx}/statics/images/100_thumb_G_1437523484060.jpg" src="${ctx}/statics/images/100_thumb_G_1437523484060.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="" href="#">苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥4888.0</span>
										<span class="sale-num">销量: 9</span>
									</div>
								</li>
								<li>
									<div class="p-img">
										<a target="_blank" title="" href="#"><img alt="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金" data-original="images/201507/thumb_${ctx}/statics/images/200_thumb_G_1437534571298.jpg" src="${ctx}/statics/images/200_thumb_G_1437534571298.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="" href="#">爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥98.0</span>
										<span class="sale-num">销量: 13</span>
									</div>
								</li>
								<li>
									<div class="p-img">
										<a target="_blank" title="" href="#"><img alt="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装" data-original="images/201507/thumb_${ctx}/statics/images/51_thumb_G_1437519866381.jpg" src="${ctx}/statics/images/51_thumb_G_1437519866381.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="" href="#">高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥199.0</span>
										<span class="sale-num">销量: 9</span>
									</div>
								</li>
								<li>
									<div class="p-img">
										<a target="_blank" title="" href="#"><img alt="家用静音办公室空调加湿器 香薰迷你大容量净化特价" data-original="images/201507/thumb_${ctx}/statics/images/88_thumb_G_1437522788663.jpg" src="${ctx}/statics/images/88_thumb_G_1437522788663.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="" href="#">家用静音办公室空调加湿器 香薰迷你大容量净化特价</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥100.0</span>
										<span class="sale-num">销量: 5</span>
									</div>
								</li>
								<li>
									<div class="p-img">
										<a target="_blank" title="" href="#"><img alt="包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松" data-original="images/201507/thumb_${ctx}/statics/images/_thumb_P_1438047501681.jpg" src="${ctx}/statics/images/_thumb_P_1438047501681.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="" href="#">包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥274.0</span>
										<span class="sale-num">销量: 10</span>
									</div>
								</li>
								<li>
									<div class="p-img">
										<a target="_blank" title="" href="#"><img alt="二级大2P智能云定频冷暖柜机空调" data-original="images/201507/thumb_${ctx}/statics/images/122_thumb_G_1437525597541.jpg" src="${ctx}/statics/images/122_thumb_G_1437525597541.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="" href="#">二级大2P智能云定频冷暖柜机空调</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥2245.0</span>
										<span class="sale-num">销量: 4</span>
									</div>
								</li>
								<li>
									<div class="p-img">
										<a target="_blank" title="" href="#"><img alt="可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套" data-original="images/201507/thumb_${ctx}/statics/images/231_thumb_G_1437587773545.jpg" src="${ctx}/statics/images/231_thumb_G_1437587773545.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="" href="#">可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥99.0</span>
										<span class="sale-num">销量: 10</span>
									</div>
								</li>
								<li>
									<div class="p-img">
										<a target="_blank" title="" href="#"><img alt="幻响（i-mu）百变羊 创意指环扣 手机支架 双指环 360度旋转 防止手机滑落 金属材质 强力粘胶" data-original="images/201507/thumb_${ctx}/statics/images/183_thumb_G_1437532716802.jpg" src="${ctx}/statics/images/183_thumb_G_1437532716802.jpg" style="display: inline;"></a>
									</div>
									<div class="p-name">
										<a target="_blank" title="" href="#">幻响（i-mu）百变羊 创意指环扣 手机支架 双指环 360度旋转 防止手机滑落 金属材质 强力粘胶</a>
									</div>
									<div class="p-price">
										<span class="sale-price main-color">¥19.9</span>
										<span class="sale-num">销量: 1</span>
									</div>
								</li>
							</ul>
						</div>

					</div>
				</div>
				<div class="main">
					<div id="filter" class="" style="">
						<form method="get" name="listform" action="##">
							<div class="fore1">
								<dl class="order">
									<dd class="first ">
										<a href="#">上架<b class="icon-order-DESCending"></b></a>
									</dd>
									<dd class="">
										<a href="#">销量<b class="icon-order-DESCending"></b></a>
									</dd>
									<dd class="">
										<a href="#">价格<b class="icon-order-DESCending"></b></a>
									</dd>
									<dd class="curr">
										<a href="#">更新<b class="icon-order-ASCending"></b></a>
									</dd>
									<dd class="">
										<a href="#">人气<b class="icon-order-DESCending"></b></a>
									</dd>
								</dl>
								<div class="pagin">

									<a class="prev"><span class="icon prev-disabled"></span></a>

									<span class="text"><font class="main-color">1</font>/2</span>

									<a href="#"><span class="icon next-btn"></span></a>

								</div>
								<div class="total">共<span class="main-color">19</span>个商品</div>
							</div>
							<div class="fore2">
								<div class="filter-btn">
									<a class="filter-tag " href="#"><i class="icon"></i><span class="text">仅显示有货</span></a>
									<a href="#"> <input class="none" type="radio" name="fff" onclick="top.location.href="#"> <i class="icon"></i> <span class="text">全部</span> </a>

									<a href="#"> <input class="none" type="radio" name="fff" onclick="top.location.href="#"> <i class="icon"></i> <span class="text">网站自营</span> </a>

									<a href="#"> <input class="none" type="radio" name="fff" onclick="top.location.href="#"> <i class="icon"></i> <span class="text">入驻商店铺</span> </a>

								</div>
								<div class="filter-mod">
									<a href="#"><span class="filter-type-icon"></span></a>
									<a href="#"><span class="filter-type-icon"></span></a>
									<a href="#"><span class="filter-type-icon"></span></a>
								</div>
							</div>
							<input type="hidden" name="category" value="6">
							<input type="hidden" name="display" value="grid" id="display">
							<input type="hidden" name="brand" value="0">
							<input type="hidden" name="price_min" value="0">
							<input type="hidden" name="price_max" value="0">
							<input type="hidden" name="filter_attr" value="0">
							<input type="hidden" name="page" value="1">
							<input type="hidden" name="sort" value="last_update">
							<input type="hidden" name="order" value="ASC">
						</form>
					</div>

					<form name="compareForm" action="##" method="post" onsubmit="return compareGoods(this);">
						<ul class="list-grid clearfix">

							<li class="item" id="li_227">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>爆款</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/227_thumb_G_1437587283837.jpg" src="${ctx}/statics/images/227_thumb_G_1437587283837.jpg" title="雅诚德Arst餐具套装56头套装中式碗碟套装陶瓷碗碟套装釉上彩" class="pic_img_227" style="display: inline;">
										</a>
									</div>
									<a href="#"></a>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥386.7">¥386.7</em>
											<em class="sale-count">已售0件</em>
										</div>
										<div class="item-name">
											<a href="#">雅诚德Arst餐具套装56头套装中式碗碟套装陶瓷碗碟套装釉上彩</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="227" data-type="0" onclick="Compare.add(227,&#39;雅诚德Arst餐具套装56头套装中式碗碟套装陶瓷碗碟套装釉上彩&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/227_thumb_G_1437587283837.jpg&#39;, &#39;¥386.7&#39;)"><i></i>对比</a>
											<a id="collect_227" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item" id="li_140">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>爆款</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/140_thumb_G_1437528915082.jpg" src="${ctx}/statics/images/140_thumb_G_1437528915082.jpg" title="雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床" class="pic_img_140" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥283.0">¥283.0</em>
											<em class="sale-count">已售3件</em>
										</div>
										<div class="item-name">
											<a href="#">雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="140" data-type="0" onclick="Compare.add(140,&#39;雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/140_thumb_G_1437528915082.jpg&#39;, &#39;¥283.0&#39;)"><i></i>对比</a>
											<a id="collect_140" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item" id="li_139">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>新品</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/139_thumb_G_1437528892306.jpg" src="${ctx}/statics/images/139_thumb_G_1437528892306.jpg" title="优雅100 经典设计款全棉斜纹印花四件套" class="pic_img_139" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥160.6">¥160.6</em>
											<em class="sale-count">已售4件</em>
										</div>
										<div class="item-name">
											<a href="#">优雅100 经典设计款全棉斜纹印花四件套</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="139" data-type="0" onclick="Compare.add(139,&#39;优雅100 经典设计款全棉斜纹印花四件套&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/139_thumb_G_1437528892306.jpg&#39;, &#39;¥160.6&#39;)"><i></i>对比</a>
											<a id="collect_139" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item last" id="li_137">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>新品</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/137_thumb_G_1437528855059.jpg" src="${ctx}/statics/images/137_thumb_G_1437528855059.jpg" title="LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基" class="pic_img_137" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥339.1">¥339.1</em>
											<em class="sale-count">已售0件</em>
										</div>
										<div class="item-name">
											<a href="#">LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="137" data-type="0" onclick="Compare.add(137,&#39;LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/137_thumb_G_1437528855059.jpg&#39;, &#39;¥339.1&#39;)"><i></i>对比</a>
											<a id="collect_137" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item" id="li_130">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>新品</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/130_thumb_G_1437527119516.jpg" src="${ctx}/statics/images/130_thumb_G_1437527119516.jpg" title="全是美 小户型梳妆台 欧式梳妆台 现代 简约" class="pic_img_130" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥754.8">¥754.8</em>
											<em class="sale-count">已售0件</em>
										</div>
										<div class="item-name">
											<a href="#">全是美 小户型梳妆台 欧式梳妆台 现代 简约</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="130" data-type="0" onclick="Compare.add(130,&#39;全是美 小户型梳妆台 欧式梳妆台 现代 简约&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/130_thumb_G_1437527119516.jpg&#39;, &#39;¥754.8&#39;)"><i></i>对比</a>
											<a id="collect_130" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item" id="li_131">
							
								<div class="item-con">
								
									<div class="item-tag-box">
										<div class="item-tag"><span>新品</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/131_thumb_G_1437527214145.jpg" src="${ctx}/statics/images/131_thumb_G_1437527214145.jpg" title="摩登生活 法式梳妆台欧式梳妆台实木梳妆台" class="pic_img_131" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥1048.0">¥1048.0</em>
											<em class="sale-count">已售0件</em>
										</div>
										<div class="item-name">
											<a href="#">摩登生活 法式梳妆台欧式梳妆台实木梳妆台</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="131" data-type="0" onclick="Compare.add(131,&#39;摩登生活 法式梳妆台欧式梳妆台实木梳妆台&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/131_thumb_G_1437527214145.jpg&#39;, &#39;¥1048.0&#39;)"><i></i>对比</a>
											<a id="collect_131" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item" id="li_129">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>爆款</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/129_thumb_G_1437527006289.jpg" src="${ctx}/statics/images/129_thumb_G_1437527006289.jpg" title="铂尼诗 家具 床 皮床 卧室家具套装" class="pic_img_129" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥2879.8">¥2879.8</em>
											<em class="sale-count">已售0件</em>
										</div>
										<div class="item-name">
											<a href="#">铂尼诗 家具 床 皮床 卧室家具套装</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="129" data-type="0" onclick="Compare.add(129,&#39;铂尼诗 家具 床 皮床 卧室家具套装&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/129_thumb_G_1437527006289.jpg&#39;, &#39;¥2879.8&#39;)"><i></i>对比</a>
											<a id="collect_129" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item last" id="li_120">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>爆款</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/120_thumb_G_1437525234301.jpg" src="${ctx}/statics/images/120_thumb_G_1437525234301.jpg" title="柏年好禾 家具 欧式床 真皮实木床 法式田园公主床" class="pic_img_120" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥1783.3">¥1783.3</em>
											<em class="sale-count">已售0件</em>
										</div>
										<div class="item-name">
											<a href="#">柏年好禾 家具 欧式床 真皮实木床 法式田园公主床</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="120" data-type="0" onclick="Compare.add(120,&#39;柏年好禾 家具 欧式床 真皮实木床 法式田园公主床&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/120_thumb_G_1437525234301.jpg&#39;, &#39;¥1783.3&#39;)"><i></i>对比</a>
											<a id="collect_120" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item" id="li_119">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>爆款</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/119_thumb_G_1437525155564.jpg" src="${ctx}/statics/images/119_thumb_G_1437525155564.jpg" title="艾生活 真皮床双人床 独特围边 精细做工 卧室家具" class="pic_img_119" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥2771.0">¥2771.0</em>
											<em class="sale-count">已售0件</em>
										</div>
										<div class="item-name">
											<a href="#">艾生活 真皮床双人床 独特围边 精细做工 卧室家具</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="119" data-type="0" onclick="Compare.add(119,&#39;艾生活 真皮床双人床 独特围边 精细做工 卧室家具&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/119_thumb_G_1437525155564.jpg&#39;, &#39;¥2771.0&#39;)"><i></i>对比</a>
											<a id="collect_119" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item" id="li_223">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>精品</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/223_thumb_G_1437586798114.jpg" src="${ctx}/statics/images/223_thumb_G_1437586798114.jpg" title="乐和居 双人床 床 榻榻米床 头层真皮" class="pic_img_223" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥2549.1">¥2549.1</em>
											<em class="sale-count">已售0件</em>
										</div>
										<div class="item-name">
											<a href="#">乐和居 双人床 床 榻榻米床 头层真皮</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="223" data-type="0" onclick="Compare.add(223,&#39;乐和居 双人床 床 榻榻米床 头层真皮&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/223_thumb_G_1437586798114.jpg&#39;, &#39;¥2549.1&#39;)"><i></i>对比</a>
											<a id="collect_223" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item" id="li_224">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>精品</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/224_thumb_G_1437586899394.jpg" src="${ctx}/statics/images/224_thumb_G_1437586899394.jpg" title="中派 进口芬兰松木家具实木儿童高低床子母床上下铺带梯柜双层床" class="pic_img_224" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥3910.0">¥3910.0</em>
											<em class="sale-count">已售0件</em>
										</div>
										<div class="item-name">
											<a href="#">中派 进口芬兰松木家具实木儿童高低床子母床上下铺带梯柜双层床</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="224" data-type="0" onclick="Compare.add(224,&#39;中派 进口芬兰松木家具实木儿童高低床子母床上下铺带梯柜双层床&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/224_thumb_G_1437586899394.jpg&#39;, &#39;¥3910.0&#39;)"><i></i>对比</a>
											<a id="collect_224" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item last" id="li_222">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>精品</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/222_thumb_G_1437586485852.jpg" src="${ctx}/statics/images/222_thumb_G_1437586485852.jpg" title="美姿蓝 家具 床 皮床 皮艺床 双人床 真皮床" class="pic_img_222" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥1181.5">¥1181.5</em>
											<em class="sale-count">已售0件</em>
										</div>
										<div class="item-name">
											<a href="#">美姿蓝 家具 床 皮床 皮艺床 双人床 真皮床</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="222" data-type="0" onclick="Compare.add(222,&#39;美姿蓝 家具 床 皮床 皮艺床 双人床 真皮床&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/222_thumb_G_1437586485852.jpg&#39;, &#39;¥1181.5&#39;)"><i></i>对比</a>
											<a id="collect_222" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item" id="li_230">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>精品</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/230_thumb_G_1437587680625.jpg" src="${ctx}/statics/images/230_thumb_G_1437587680625.jpg" title="304不锈钢宝宝分格餐盘 儿童餐具分隔格碗餐盘婴儿盘" class="pic_img_230" style="display: inline;">
										</a>
									</div>
									<a href="#"></a>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥29.7">¥29.7</em>
											<em class="sale-count">已售6件</em>
										</div>
										<div class="item-name">
											<a href="#">304不锈钢宝宝分格餐盘 儿童餐具分隔格碗餐盘婴儿盘</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="230" data-type="0" onclick="Compare.add(230,&#39;304不锈钢宝宝分格餐盘 儿童餐具分隔格碗餐盘婴儿盘&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/230_thumb_G_1437587680625.jpg&#39;, &#39;¥29.7&#39;)"><i></i>对比</a>
											<a id="collect_230" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item" id="li_228">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>精品</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/228_thumb_G_1437587380356.jpg" src="${ctx}/statics/images/228_thumb_G_1437587380356.jpg" title="剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56" class="pic_img_228" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥254.1">¥254.1</em>
											<em class="sale-count">已售0件</em>
										</div>
										<div class="item-name">
											<a href="#">剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="228" data-type="0" onclick="Compare.add(228,&#39;剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/228_thumb_G_1437587380356.jpg&#39;, &#39;¥254.1&#39;)"><i></i>对比</a>
											<a id="collect_228" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item" id="li_226">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>精品</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/226_thumb_G_1437587179362.jpg" src="${ctx}/statics/images/226_thumb_G_1437587179362.jpg" title="亿嘉IJARL 时尚陶瓷28头韩式骨瓷餐具套装 东洋之心" class="pic_img_226" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥203.1">¥203.1</em>
											<em class="sale-count">已售0件</em>
										</div>
										<div class="item-name">
											<a href="#">亿嘉IJARL 时尚陶瓷28头韩式骨瓷餐具套装 东洋之心</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="226" data-type="0" onclick="Compare.add(226,&#39;亿嘉IJARL 时尚陶瓷28头韩式骨瓷餐具套装 东洋之心&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/226_thumb_G_1437587179362.jpg&#39;, &#39;¥203.1&#39;)"><i></i>对比</a>
											<a id="collect_226" href="#"><i></i>收藏</a>
											<a href="#"><i></i>0</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

							<li class="item last" id="li_232">
								<div class="item-con">
									<div class="item-tag-box">
										<div class="item-tag"><span>精品</span><i></i></div>
									</div>
									<div class="item-pic">
										<a href="#">
											<img data-original="images/201507/thumb_${ctx}/statics/images/_thumb_P_1438047501681.jpg" src="${ctx}/statics/images/_thumb_P_1438047501681.jpg" title="包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松" class="pic_img_232" style="display: inline;">
										</a>
									</div>
									<div class="item-info">
										<div class="item-price">
											<em class="sale-price main-color" title="本店价：¥232.9">¥232.9</em>
											<em class="sale-count">已售10件</em>
										</div>
										<div class="item-name">
											<a href="#">包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松</a>
										</div>
										<div class="item-operate">
											<a class="operate-btn compare-btn" data-goods="232" data-type="0" onclick="Compare.add(232,&#39;包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松&#39;,&#39;0&#39;, &#39;images/201507/thumb_${ctx}/statics/images/_thumb_P_1438047501681.jpg&#39;, &#39;¥232.9&#39;)"><i></i>对比</a>
											<a id="collect_232" href="#"><i></i>收藏</a>
											<a href="#"><i></i>1</a>
											<a href="#"></a>
										</div>
									</div>
								</div>
							</li>

						</ul>

					</form>
					<script type="Text/Javascript" language="JavaScript">
						<!--
re_collect();
/*function re_collect(id){
  goods_id = (typeof(id) == "undefined" ? 0 : id);
  Ajax.call('user.php?act=re_collect', 'id=' + goods_id, re_collectResponse, 'GET', 'JSON');
}*/
function re_collectResponse(result){
  if (result.goods_id > 0){
    document.getElementById("collect_" + result.goods_id).className = (result.is_collect == 1 ? "operate-btn collet-btn curr" : "operate-btn collet-btn");
  }else{
    $("a[id^='collect_']").className = "operate-btn collet-btn";
    for(i = 0; i < result.is_collect.length; i++){
      document.getElementById("collect_" + result.is_collect[i]).className = "operate-btn collet-btn curr";
    }
  }
}
function selectPage(sel){
  sel.form.submit();
}
//-->
					</script>
					<script type="text/javascript">
						window.onload = function() {
							Compare.init();
							fixpng();
						}
						var button_compare = '';
						var exist = "您已经选择了%s";
						var count_limit = "最多只能选择4个商品进行对比";
						var goods_type_different = "\"%s\"和已选择商品类型不同无法进行对比";
						var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
						var btn_buy = "购买";
						var is_cancel = "取消";
						var select_spe = "请选择商品属性";
					</script>

					<script type="text/javascript" src="${ctx}/stiatics/js/json2.js"></script>
					<div id="compareBox" style="left: 572px;">
						<div class="menu">
							<ul>
								<li class="current" data-value="compare">对比栏</li>
								<li data-value="history">最近浏览</li>
							</ul>
							<a class="hide-compare" href="#"></a>
							<div style="clear:both"></div>
						</div>
						<div id="compareList">
							<dl><dt style="background-color: rgb(246, 246, 246);">1</dt>
								<dd>您还可以继续添加</dd>
							</dl>
							<dl><dt style="background-color: rgb(246, 246, 246);">2</dt>
								<dd>您还可以继续添加</dd>
							</dl>
							<dl><dt style="background-color: rgb(246, 246, 246);">3</dt>
								<dd>您还可以继续添加</dd>
							</dl>
							<dl><dt style="background-color: rgb(246, 246, 246);">4</dt>
								<dd>您还可以继续添加</dd>
							</dl>
							<div class="operate">
								<a class="compare">对比</a>
								<a class="clear">清空对比栏</a>
							</div>
						</div>
						<div id="historyList" style="display:none;">
							<span id="sc-prev" class="sc-prev scroll-btn" style="display: none;"></span>
							<span id="sc-next" class="sc-next scroll-btn" style="display: none;"></span>
							<div class="scroll_wrap"> </div>
						</div>
					</div>
					<script>
						$(function() {
							var scroll_height = $('#filter').offset().top;
							$(window).scroll(function() {
								var this_scrollTop = $(this).scrollTop();
								if(this_scrollTop > scroll_height) {
									$('#filter').addClass('filter-fixed').css({
										'left': ($(window).width() - $('.filter-fixed').outerWidth()) / 2
									});
								} else {
									$('#filter').removeClass('filter-fixed').css('left', '');
								}
							})
						})
					</script>
					<form name="selectPageForm" action="##" method="get">
						<div class="page">
							<div class="page-wrap fr">
								<div class="page-num fl">
									<span class="num prev disabled">
            	<i class="icon"></i>
                <i>上一页</i>
            </span>

									<span class="num curr">1</span>

									<a class="num" href="#">2</a>

									<a class="num next" href="#">
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
			<div class="browse-history none">
				<div class="browse-history-tab clearfix">
					<span class="tab-span">浏览历史</span>
					<div class="browse-history-line main-bg-color"></div>
					<div class="browse-history-other">
						<a onclick="clear_history()" href="#"><i class="icon"></i><em class="text">清空</em></a>
					</div>
				</div>
				<div class="browse-history-con">
					<div class="browse-history-inner">
						<ul id="history_list" class="history-panel ">
						</ul>
					</div>
				</div>
			</div>
			<script type="text/javascript">
				function clear_history() {
					Ajax.call('user.php', 'act=clear_history', clear_history_Response, 'GET', 'TEXT', 1, 1);
				}

				function clear_history_Response(res) {
					document.getElementById('history_list').innerHTML = '您已清空最近浏览过的商品';
				}
				if($('.browse-history-con li').length == 0) {
					$('.browse-history').addClass('none');
				}
				$('.browse-history .browse-history-tab .tab-span').mouseover(function() {
					$(this).addClass('main-color').siblings('.tab-span').removeClass('main-color');
					$('.browse-history-line').stop().animate({
						'left': $(this).position().left,
						'width': $(this).outerWidth()
					}, 500);
					$('.browse-history-other').find('a').eq($(this).index()).removeClass('none').siblings('a').addClass('none');
					$('.browse-history-inner ul').eq($(this).index()).removeClass('none').siblings('ul').addClass('none');
				})
				var history_num = 0;
				var history_li = $('.browse-history .recommend-panel li');
				var history_slide_w = history_li.outerWidth() * 6;
				var history_slide_num = Math.ceil(history_li.length / 6);
				$('.browse-history .history-recommend-change').click(function() {
					history_num++;
					if(history_num > (history_slide_num - 1)) {
						history_num = 0;
					}
					$('.browse-history .recommend-panel').css({
						'left': -history_num * history_slide_w
					});
				})
			</script>
		</div>
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
									<span class="ECS_CARTINFO"><form id="formCart" name="formCart" method="post" action="##">
	<span class="cart_num">0</span>
									<div class="sidebar-cart-box">
										<h3 class="sidebar-panel-header">
            <a href="#"><i class="cart-icon"></i><em class="title">购物车</em></a>
            <span class="close-panel"></span>
        </h3>
										<div class="cart-panel-main">
											<div class="cart-panel-content" style="height: 834px;">
												<div class="tip-box">
													<i class="tip-icon"></i>
													<div class="tip-text">您的购物车里什么都没有哦<br>
														<a class="main-color" href="#">再去看看吧</a>
													</div>
												</div>
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
							<li>
								<a href="#"><i class="contrast"></i></a>
								<div class="popup">
									对比商品
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
						<form id="formCart" name="formCart" method="post" action="##">
							<span class="cart_num">0</span>
							<div class="sidebar-cart-box">
								<h3 class="sidebar-panel-header">
            <a href="#"><i class="cart-icon"></i><em class="title">购物车</em></a>
            <span class="close-panel"></span>
        </h3>
								<div class="cart-panel-main">
									<div class="cart-panel-content" style="height: 834px;">
										<div class="tip-box">
											<i class="tip-icon"></i>
											<div class="tip-text">您的购物车里什么都没有哦<br>
												<a class="main-color" href="#">再去看看吧</a>
											</div>
										</div>
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
				<form name="formLogin" action="##" method="post" onsubmit="return user_login();">
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
		<script type="text/javascript" src="${ctx}/stiatics/js/arrive_notice.js"></script>
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
								<input type="button" value="马上提交" onclick="tell_me1(183)" class="sure-btn">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="site-footer">
			<div class="footer-related">
				<div class="footer-article w1210">
					<dl class="col-article col-article-first">
						<dt>新手上路 </dt>
						<dd>
							<a rel="nofollow" href="#">售后流程</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">购物流程</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">订购方式</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">在线支付</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">公司转账</a>
						</dd>
					</dl>
					<dl class="col-article ">
						<dt>配送方式 </dt>
						<dd>
							<a rel="nofollow" href="#">货到付款区域</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">配送支付查询</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">支付方式说明</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">如何送礼</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">Global Shipping</a>
						</dd>
					</dl>
					<dl class="col-article ">
						<dt>购物指南</dt>
						<dd>
							<a rel="nofollow" href="#">常见问题</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">订购流程</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">注册新会员</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">团购/机票</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">联系客服</a>
						</dd>
					</dl>
					<dl class="col-article ">
						<dt>售后服务</dt>
						<dd>
							<a rel="nofollow" href="#">退换货原则</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">售后服务保证</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">换货流程</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">退款说明</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">返修/退换货</a>
						</dd>
					</dl>
					<dl class="col-article ">
						<dt>关于我们 </dt>
						<dd>
							<a rel="nofollow" href="#">网站故障报告</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">选机咨询</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">投诉与建议</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">节能补贴</a>
						</dd>
						<dd>
							<a rel="nofollow" href="#">关于我们</a>
						</dd>
					</dl>
					<dl class="col-article">
						<dt>服务支持</dt>
						<dd>售前咨询 020-34506590</dd>
						<dd>售后咨询 020-34506590</dd>
						<dd>客服 QQ 38306293</dd>
						<dd>工作时间 9：00-17：30</dd>
					</dl>
				</div>
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
							<a href="#"><img src="${ctx}/statics/images/button_old_41.gif" height="16" border="0" alt="QQ"> 394223545</a>
							<a href="#"><img src="${ctx}/statics/images/T1tm9.XdRnXXaHNz_X-16-16.gif" width="16" height="16" border="0" alt="淘宝旺旺">38306293</a>
						</p>
					</div>
				</div>
				<img src="##" alt="" style="width:0px;height:0px;display:none;">
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
				
				<script type="text/javascript" src="./家居_files/base.js"></script>
			</div>
		</div>
		<script>
			//收集skuId
			var skuIds = [];
			$('ul.list-h li[sku]').each(function(i) {
				skuIds.push($(this).attr('sku'));
			})

			function setPrice(url) {
				var max = 'max=' + document.getElementById('price_max').value;
				var min = 'min=' + document.getElementById('price_min').value;
				var remin = /min=([0-9])*/ig; //•g（全文查找）；•i（忽略大小写）；•m（多行查找）  
				var remax = /max=([0-9])*/ig; //•g（全文查找）；•i（忽略大小写）；•m（多行查找）  
				var nurl = url.replace(remin, min).replace(remax, max);
				location.href = nurl;
			}
		</script>

		<script type="text/javascript">
			$("img").lazyload({
				effect: "fadeIn",
				skip_invisible: true,
				failure_limit: 20
			});
		</script>
		<script type="text/javascript" src="./家居_files/compare.js(1)"></script>

	</body>

</html>