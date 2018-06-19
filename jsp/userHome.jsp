<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="userhead.jsp" %>
<%@ include file="userleft.jsp" %>
			<div class="user-right">
				<div class="account">
					<div class="notice"> <i></i> <span>用户中心公告：用户中心公告！</span> </div>
					<div class="money">
						<ul class="clearfix">
							<li class="first">
								<div class="title"><span>账号余额</span></div>
								<div class="pic">
									<a href="user.php?act=account_log"><i class="user_bg"></i></a>
								</div>
								<p>
									<a href="user.php?act=account_log">¥601.11</a>
								</p>
							</li>
							<li class="second">
								<div class="title"><span>红包</span></div>
								<div class="pic">
									<a href="user.php?act=bonus"><i class="user_bg"></i></a>
								</div>
								<p>
									<a href="user.php?act=bonus"> 17 张</a>
								</p>
							</li>
							<li class="third">
								<div class="title"><span>可用积分</span></div>
								<div class="pic"><i class="user_bg"></i></div>
								<p>
									<a href="exchange.php">13420积分</a>
								</p>
							</li>
						</ul>
					</div>
					<div class="security">
						<div class="improve">
							<p>账户安全</p>
							<span class="improve-name"> 危险                                                                       </span> <i class="danger"><em></em></i>
							<a href="security.php" title="提升账户安全等级">提升 &gt;</a>
						</div>
						<div class="safe-info clearfix">
							<div class="safe-type phone">
								<i class="tit-icon"></i>
								<span class="safe-name">手机：</span>
								<a class="res" href="security.php?act=mobile_validate">未验证</a>
							</div>
							<div class="safe-type mail">
								<i class="tit-icon"></i>
								<span class="safe-name">邮箱：</span>

								<a class="res" href="security.php?act=email_validate">未验证</a>
							</div>
						</div>
					</div>
					<div class="middle order">
						<div class="line1 clearfix">
							<div class="title"><i></i><span>交易提醒</span></div>
							<div class="status">
								<ul>
									<li>
										<a href="user.php?act=order_list&composite_status=0" title="未确认订单">未确认<span>0</span></a><i></i></li>
									<li>
										<a href="user.php?act=order_list&composite_status=100" title="待付款订单">待付款<span>0</span></a><i></i></li>
									<li>
										<a href="user.php?act=my_comment" title="待评价商品">待评价<span>0</span></a>
									</li>
								</ul>
							</div>
							<a class="more" href="user.php?act=order_list" title="查看全部订单">查看全部订单 &gt;</a>
						</div>

						<div class="proListUc">
							<ul class="listLine clearfix">
								<li>
									<ul class="img clearfix">
										<li>
											<a href="user.php?act=order_detail&order_id=222" title="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金" target="_blank">

												<img src="${ctx}/statics/images/200_thumb_G_1437534571298.jpg" alt="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金" />

											</a> <span class="order-num">1</span> </li>
									</ul>
								</li>
								<li class="name">
									<a href="user.php?act=order_detail&order_id=222" title="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金" target="_blank">爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金</a>
								</li>
								<li class="attr"></li>
								<li class="type"><span style="color:#C81623">无效</span></li>
								<li class="check">
									<a href="user.php?act=order_detail&order_id=222" title="查看订单" target="_blank">查看</a>
								</li>
							</ul>
							<ul class="listLine clearfix">
								<li>
									<ul class="img clearfix">
										<li>
											<a href="user.php?act=order_detail&order_id=221" title="越南红心火龙果5斤装 红肉火龙果 新鲜进口水果" target="_blank">

												<img src="${ctx}/statics/images/231_thumb_G_1437587773545.jpg" alt="越南红心火龙果5斤装 红肉火龙果 新鲜进口水果" />

											</a> <span class="order-num">1</span> </li>
									</ul>
								</li>
								<li class="name">
									<a href="user.php?act=order_detail&order_id=221" title="越南红心火龙果5斤装 红肉火龙果 新鲜进口水果" target="_blank">越南红心火龙果5斤装 红肉火龙果 新鲜进口水果</a>
								</li>
								<li class="attr"></li>
								<li class="type"><span style="color:#C81623">无效</span></li>
								<li class="check">
									<a href="user.php?act=order_detail&order_id=221" title="查看订单" target="_blank">查看</a>
								</li>
							</ul>
							<ul class="listLine clearfix">
								<li>
									<ul class="img clearfix">
										<li>
											<a href="user.php?act=order_detail&order_id=214" title="西门子开关插座面板 悦动白墙壁一开双控带荧光面板" target="_blank">

												<img src="${ctx}/statics/images/277_thumb_G_1456453595148.jpg" alt="西门子开关插座面板 悦动白墙壁一开双控带荧光面板" />

											</a> <span class="order-num">1</span> </li>
									</ul>
								</li>
								<li class="name">
									<a href="user.php?act=order_detail&order_id=214" title="西门子开关插座面板 悦动白墙壁一开双控带荧光面板" target="_blank">西门子开关插座面板 悦动白墙壁一开双控带荧光面板</a>
								</li>
								<li class="attr"></li>
								<li class="type"><span style="color:#C81623">无效</span></li>
								<li class="check">
									<a href="user.php?act=order_detail&order_id=214" title="查看订单" target="_blank">查看</a>
								</li>
							</ul>
							<ul class="listLine clearfix">
								<li>
									<ul class="img clearfix">
										<li>
											<a href="user.php?act=order_detail&order_id=213" title="鸿雁 六位+三位 ZDP61G3T3/D 3m+ZDP31G3/D 1.5m" target="_blank">

												<img src="${ctx}/statics/images/183_thumb_G_1437532716802.jpg" alt="鸿雁 六位+三位 ZDP61G3T3/D 3m+ZDP31G3/D 1.5m" />

											</a> <span class="order-num">1</span> </li>
									</ul>
								</li>
								<li class="name">
									<a href="user.php?act=order_detail&order_id=213" title="鸿雁 六位+三位 ZDP61G3T3/D 3m+ZDP31G3/D 1.5m" target="_blank">鸿雁 六位+三位 ZDP61G3T3/D 3m+ZDP31G3/D 1.5m</a>
								</li>
								<li class="attr"></li>
								<li class="type"><span style="color:#C81623">无效</span></li>
								<li class="check">
									<a href="user.php?act=order_detail&order_id=213" title="查看订单" target="_blank">查看</a>
								</li>
							</ul>
						</div>

					</div>
					<div class="middle cart">
						<div class="line1 clearfix">
							<div class="title"><i></i><span>我的购物车</span></div>
						</div>

						<script type="text/javascript" charset="utf-8" src="${ctx}/statics/js/easyscroll.js"></script>
						<div class="proListUc_cart">
							<div class="div_scroll">
								<div style="float:left; height:auto; width:auto">
									<ul class="listLine_cart clearfix">
										<li>
											<a href="goods.php?id=200" target="_blank" title="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金" class="pic"> <img src="${ctx}/statics/images/200_thumb_G_1437534571298.jpg" alt="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金" /> </a>
											<a href="goods.php?id=200" target="_blank" title="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金" class="name">爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金</a>
											<p>售价：
												<font>￥83.30</font>
											</p>
										</li>
										<li>
											<a href="goods.php?id=51" target="_blank" title="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装" class="pic"> <img src="${ctx}/statics/images/51_thumb_G_1437519866381.jpg" alt="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装" /> </a>
											<a href="goods.php?id=51" target="_blank" title="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装" class="name">高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装</a>
											<p>售价：
												<font>￥169.15</font>
											</p>
										</li>
									</ul>
								</div>
							</div>
							<p class="more">
								<a href="flow.php" target="_blank" title="查看购物车所有商品">查看购物车所有商品 &gt;</a>
							</p>
						</div>

					</div>
					<div class="middle exchange">
						<div class="line1 clearfix">
							<div class="title"><i></i><span>积分兑换</span></div>
							<a class="more" href="exchange.php" title="进入积分商城">进入积分商城 &gt;</a>
						</div>

						<div class="exchangeList">
							<div class="colFrame">
								<ul class="clearfix">
									<li class="first">
										<a href="exchange.php?id=97&act=view" title="除湿机家用抽湿机20B 地下室别墅吸湿器除湿器" target="_blank" class="img"> <img src="${ctx}/statics/images/97_thumb_G_1437523257758.jpg" alt="除湿机家用抽湿机20B 地下室别墅吸湿器除湿器" /> <span>14990积分</span> </a>
										<a href="exchange.php?id=97&act=view" title="除湿机家用抽湿机20B 地下室别墅吸湿器除湿器" target="_blank" class="name">除湿机家用抽湿机20B 地下室别墅吸湿器除湿器</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=100&act=view" title="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机" target="_blank" class="img"> <img src="${ctx}/statics/images/100_thumb_G_1437523484060.jpg" alt="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机" /> <span>180000积分</span> </a>
										<a href="exchange.php?id=100&act=view" title="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机" target="_blank" class="name">苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=81&act=view" title="伊利 味可滋（巧克力）奶昔乳饮品240ml*12盒" target="_blank" class="img"> <img src="${ctx}/statics/images/81_thumb_G_1437522277060.jpg" alt="伊利 味可滋（巧克力）奶昔乳饮品240ml*12盒" /> <span>1990积分</span> </a>
										<a href="exchange.php?id=81&act=view" title="伊利 味可滋（巧克力）奶昔乳饮品240ml*12盒" target="_blank" class="name">伊利 味可滋（巧克力）奶昔乳饮品240ml*12盒</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=102&act=view" title="Polo衫男短袖 2015夏装男装短袖t恤 男士拼接撞色修身韩版潮" target="_blank" class="img"> <img src="${ctx}/statics/images/102_thumb_G_1437523460978.jpg" alt="Polo衫男短袖 2015夏装男装短袖t恤 男士拼接撞色修身韩版潮" /> <span>1560积分</span> </a>
										<a href="exchange.php?id=102&act=view" title="Polo衫男短袖 2015夏装男装短袖t恤 男士拼接撞色修身韩版潮" target="_blank" class="name">Polo衫男短袖 2015夏装男装短袖t恤 男士拼接撞色修身韩版潮</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=110&act=view" title="养生壶玻璃加厚分体保温电煎药壶全自动花茶壶隔水炖正品" target="_blank" class="img"> <img src="${ctx}/statics/images/91_thumb_G_1437522939065.jpg" alt="养生壶玻璃加厚分体保温电煎药壶全自动花茶壶隔水炖正品" /> <span>999积分</span> </a>
										<a href="exchange.php?id=110&act=view" title="养生壶玻璃加厚分体保温电煎药壶全自动花茶壶隔水炖正品" target="_blank" class="name">养生壶玻璃加厚分体保温电煎药壶全自动花茶壶隔水炖正品</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=56&act=view" title="2015新品真丝睡衣女款可爱娃娃衫家居服春秋桑蚕丝睡裙" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/56_thumb_G_1437520837769.jpg" alt="2015新品真丝睡衣女款可爱娃娃衫家居服春秋桑蚕丝睡裙" /> <span>3999积分</span> </a>
										<a href="exchange.php?id=56&act=view" title="2015新品真丝睡衣女款可爱娃娃衫家居服春秋桑蚕丝睡裙" target="_blank" class="name">2015新品真丝睡衣女款可爱娃娃衫家居服春秋桑蚕丝睡裙</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=29&act=view" title="意大利费列罗巧克力食品进口零食礼盒576粒整箱装结婚喜糖" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/29_thumb_G_1437506331258.jpg" alt="意大利费列罗巧克力食品进口零食礼盒576粒整箱装结婚喜糖" /> <span>1299积分</span> </a>
										<a href="exchange.php?id=29&act=view" title="意大利费列罗巧克力食品进口零食礼盒576粒整箱装结婚喜糖" target="_blank" class="name">意大利费列罗巧克力食品进口零食礼盒576粒整箱装结婚喜糖</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=86&act=view" title="海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/86_thumb_G_1437522610059.jpg" alt="海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保" /> <span>1099积分</span> </a>
										<a href="exchange.php?id=86&act=view" title="海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保" target="_blank" class="name">海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=31&act=view" title="台湾进口 百年老店糖之坊夏威夷果牛轧糖奶糖（蔓越莓味）120克" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/31_thumb_G_1437506821290.jpg" alt="台湾进口 百年老店糖之坊夏威夷果牛轧糖奶糖（蔓越莓味）120克" /> <span>500积分</span> </a>
										<a href="exchange.php?id=31&act=view" title="台湾进口 百年老店糖之坊夏威夷果牛轧糖奶糖（蔓越莓味）120克" target="_blank" class="name">台湾进口 百年老店糖之坊夏威夷果牛轧糖奶糖（蔓越莓味）120克</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=55&act=view" title="嘉云糖 300g玻璃罐装 水果硬糖 喜糖 德国进口" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/55_thumb_G_1437520599834.jpg" alt="嘉云糖 300g玻璃罐装 水果硬糖 喜糖 德国进口" /> <span>499积分</span> </a>
										<a href="exchange.php?id=55&act=view" title="嘉云糖 300g玻璃罐装 水果硬糖 喜糖 德国进口" target="_blank" class="name">嘉云糖 300g玻璃罐装 水果硬糖 喜糖 德国进口</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=52&act=view" title="昆仑玉红枣 和田香枣二级500g 新疆特产 免洗零食 和田大枣子" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/52_thumb_G_1437520436446.jpg" alt="昆仑玉红枣 和田香枣二级500g 新疆特产 免洗零食 和田大枣子" /> <span>499积分</span> </a>
										<a href="exchange.php?id=52&act=view" title="昆仑玉红枣 和田香枣二级500g 新疆特产 免洗零食 和田大枣子" target="_blank" class="name">昆仑玉红枣 和田香枣二级500g 新疆特产 免洗零食 和田大枣子</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=62&act=view" title="澳大利亚 进口牛奶 德运（Devondale） 全脂牛奶 1L*10 整箱装" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/62_thumb_G_1437521071878.jpg" alt="澳大利亚 进口牛奶 德运（Devondale） 全脂牛奶 1L*10 整箱装" /> <span>999积分</span> </a>
										<a href="exchange.php?id=62&act=view" title="澳大利亚 进口牛奶 德运（Devondale） 全脂牛奶 1L*10 整箱装" target="_blank" class="name">澳大利亚 进口牛奶 德运（Devondale） 全脂牛奶 1L*10 整箱装</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=91&act=view" title="海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/91_thumb_G_1437522939065.jpg" alt="海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌" /> <span>1699积分</span> </a>
										<a href="exchange.php?id=91&act=view" title="海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌" target="_blank" class="name">海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=79&act=view" title="蒙牛 特仑苏 纯牛奶 250ml*12 礼盒装" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/79_thumb_G_1437522204345.jpg" alt="蒙牛 特仑苏 纯牛奶 250ml*12 礼盒装" /> <span>799积分</span> </a>
										<a href="exchange.php?id=79&act=view" title="蒙牛 特仑苏 纯牛奶 250ml*12 礼盒装" target="_blank" class="name">蒙牛 特仑苏 纯牛奶 250ml*12 礼盒装</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=101&act=view" title="美的电磁炉Midea/美的 WK2102电磁炉特价家用触摸屏火锅电池炉灶" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/101_thumb_G_1437523379443.jpg" alt="美的电磁炉Midea/美的 WK2102电磁炉特价家用触摸屏火锅电池炉灶" /> <span>1500积分</span> </a>
										<a href="exchange.php?id=101&act=view" title="美的电磁炉Midea/美的 WK2102电磁炉特价家用触摸屏火锅电池炉灶" target="_blank" class="name">美的电磁炉Midea/美的 WK2102电磁炉特价家用触摸屏火锅电池炉灶</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=92&act=view" title="人气5折杰克琼斯夏纯棉条纹撞色POLO衫短袖T恤" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/92_thumb_G_1437523024248.jpg" alt="人气5折杰克琼斯夏纯棉条纹撞色POLO衫短袖T恤" /> <span>700积分</span> </a>
										<a href="exchange.php?id=92&act=view" title="人气5折杰克琼斯夏纯棉条纹撞色POLO衫短袖T恤" target="_blank" class="name">人气5折杰克琼斯夏纯棉条纹撞色POLO衫短袖T恤</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=85&act=view" title="美的空调扇单冷遥控制冷风扇冷风机家用净化静音冷气空调AC120-G" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/85_thumb_G_1437522493859.jpg" alt="美的空调扇单冷遥控制冷风扇冷风机家用净化静音冷气空调AC120-G" /> <span>2600积分</span> </a>
										<a href="exchange.php?id=85&act=view" title="美的空调扇单冷遥控制冷风扇冷风机家用净化静音冷气空调AC120-G" target="_blank" class="name">美的空调扇单冷遥控制冷风扇冷风机家用净化静音冷气空调AC120-G</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=30&act=view" title="日本进口 KRACIE（KRACIE）牌玫瑰香味糖果32g" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/30_thumb_G_1437506667557.jpg" alt="日本进口 KRACIE（KRACIE）牌玫瑰香味糖果32g" /> <span>699积分</span> </a>
										<a href="exchange.php?id=30&act=view" title="日本进口 KRACIE（KRACIE）牌玫瑰香味糖果32g" target="_blank" class="name">日本进口 KRACIE（KRACIE）牌玫瑰香味糖果32g</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=94&act=view" title="电熨斗蒸汽家用 手持迷你电烫斗顺滑不粘底板 蒸汽熨斗家用" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/94_thumb_G_1437523136659.jpg" alt="电熨斗蒸汽家用 手持迷你电烫斗顺滑不粘底板 蒸汽熨斗家用" /> <span>2000积分</span> </a>
										<a href="exchange.php?id=94&act=view" title="电熨斗蒸汽家用 手持迷你电烫斗顺滑不粘底板 蒸汽熨斗家用" target="_blank" class="name">电熨斗蒸汽家用 手持迷你电烫斗顺滑不粘底板 蒸汽熨斗家用</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=105&act=view" title="法曼斯2015夏装新款长绒棉短袖t恤商务男士休闲天丝翻领纯色上衣" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/105_thumb_G_1437523502682.jpg" alt="法曼斯2015夏装新款长绒棉短袖t恤商务男士休闲天丝翻领纯色上衣" /> <span>1200积分</span> </a>
										<a href="exchange.php?id=105&act=view" title="法曼斯2015夏装新款长绒棉短袖t恤商务男士休闲天丝翻领纯色上衣" target="_blank" class="name">法曼斯2015夏装新款长绒棉短袖t恤商务男士休闲天丝翻领纯色上衣</a>
									</li>
									<li class="first">
										<a href="exchange.php?id=26&act=view" title="韩国进口X-5花生夹心巧克力棒盒装（24根）864g" target="_blank" class="img"> <img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/26_thumb_G_1437505984631.jpg" alt="韩国进口X-5花生夹心巧克力棒盒装（24根）864g" /> <span>100积分</span> </a>
										<a href="exchange.php?id=26&act=view" title="韩国进口X-5花生夹心巧克力棒盒装（24根）864g" target="_blank" class="name">韩国进口X-5花生夹心巧克力棒盒装（24根）864g</a>
									</li>
								</ul>
							</div>
						</div>

					</div>
					<div class="middle history">
						<div class="line1 clearfix">
							<div class="title"><i></i><span>我的足迹</span></div>
						</div>
						<div class="proListUc_history">
							<div class="colFrame">
								<ul style="left: 0px;" class="clearfix">
									<li class="first">
										<a href="goods.php?id=5" title="半壳扇贝 扇贝肉 1000g/新鲜扇贝冷冻烧烤海鲜" target="_blank" class="img">
											<div class="mask"></div>
											<img src="${ctx}/statics/images/91_thumb_G_1437522939065.jpg" alt="半壳扇贝 扇贝肉 1000g/新鲜扇贝冷冻烧烤海鲜" /> </a>
										<a href="goods.php?id=5" title="半壳扇贝 扇贝肉 1000g/新鲜扇贝冷冻烧烤海鲜" target="_blank" class="name">半壳扇贝 扇贝肉 1000g/新鲜扇贝冷冻烧烤海鲜</a>
										<p class="pri">￥49.30</p>
									</li>
									<li class="first">
										<a href="goods.php?id=51" title="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装" target="_blank" class="img">
											<div class="mask"></div>
											<img src="${ctx}/statics/images/51_thumb_G_1437519866381.jpg" alt="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装" /> </a>
										<a href="goods.php?id=51" title="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装" target="_blank" class="name">高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装</a>
										<p class="pri">￥199.00</p>
									</li>
									<li class="first">
										<a href="goods.php?id=88" title="家用静音办公室空调加湿器 香薰迷你大容量净化特价" target="_blank" class="img">
											<div class="mask"></div>
											<img src="${ctx}/statics/images/88_thumb_G_1437522788663.jpg" alt="家用静音办公室空调加湿器 香薰迷你大容量净化特价" /> </a>
										<a href="goods.php?id=88" title="家用静音办公室空调加湿器 香薰迷你大容量净化特价" target="_blank" class="name">家用静音办公室空调加湿器 香薰迷你大容量净化特价</a>
										<p class="pri">￥100.00</p>
									</li>
									<li class="first">
										<a href="goods.php?id=100" title="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机" target="_blank" class="img">
											<div class="mask"></div>
											<img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/100_thumb_G_1437523484060.jpg" alt="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机" /> </a>
										<a href="goods.php?id=100" title="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机" target="_blank" class="name">苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机</a>
										<p class="pri">￥4888.00</p>
									</li>
									<li class="first">
										<a href="goods.php?id=122" title="二级大2P智能云定频冷暖柜机空调" target="_blank" class="img">
											<div class="mask"></div>
											<img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/122_thumb_G_1437525597541.jpg" alt="二级大2P智能云定频冷暖柜机空调" /> </a>
										<a href="goods.php?id=122" title="二级大2P智能云定频冷暖柜机空调" target="_blank" class="name">二级大2P智能云定频冷暖柜机空调</a>
										<p class="pri">￥2245.00</p>
									</li>
									<li class="first">
										<a href="goods.php?id=124" title="Haier/海尔 BCD-252WDBD 252升 无霜风冷 冷藏冷冻家用三门冰箱" target="_blank" class="img">
											<div class="mask"></div>
											<img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/124_thumb_G_1437525834721.jpg" alt="Haier/海尔 BCD-252WDBD 252升 无霜风冷 冷藏冷冻家用三门冰箱" /> </a>
										<a href="goods.php?id=124" title="Haier/海尔 BCD-252WDBD 252升 无霜风冷 冷藏冷冻家用三门冰箱" target="_blank" class="name">Haier/海尔 BCD-252WDBD 252升 无霜风冷 冷藏冷冻家用三门冰箱</a>
										<p class="pri">￥3245.00</p>
									</li>
									<li class="first">
										<a href="goods.php?id=183" title="幻响（i-mu）百变羊 创意指环扣 手机支架 双指环 360度旋转 防止手机滑落 金属材质 强力粘胶" target="_blank" class="img">
											<div class="mask"></div>
											<img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/183_thumb_G_1437532716802.jpg" alt="幻响（i-mu）百变羊 创意指环扣 手机支架 双指环 360度旋转 防止手机滑落 金属材质 强力粘胶" /> </a>
										<a href="goods.php?id=183" title="幻响（i-mu）百变羊 创意指环扣 手机支架 双指环 360度旋转 防止手机滑落 金属材质 强力粘胶" target="_blank" class="name">幻响（i-mu）百变羊 创意指环扣 手机支架 双指环 360度旋转 防止手机滑落 金属材质 强力粘胶</a>
										<p class="pri">￥16.92</p>
									</li>
									<li class="first">
										<a href="goods.php?id=200" title="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金" target="_blank" class="img">
											<div class="mask"></div>
											<img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/200_thumb_G_1437534571298.jpg" alt="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金" /> </a>
										<a href="goods.php?id=200" title="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金" target="_blank" class="name">爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金</a>
										<p class="pri">￥98.00</p>
									</li>
									<li class="first">
										<a href="goods.php?id=231" title="可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套" target="_blank" class="img">
											<div class="mask"></div>
											<img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/231_thumb_G_1437587773545.jpg" alt="可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套" /> </a>
										<a href="goods.php?id=231" title="可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套" target="_blank" class="name">可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套</a>
										<p class="pri">￥99.00</p>
									</li>
									<li class="first">
										<a href="goods.php?id=232" title="包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松" target="_blank" class="img">
											<div class="mask"></div>
											<img src="${ctx}/statics/images/201507/thumb_${ctx}/statics/images/_thumb_P_1438047501681.jpg" alt="包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松" /> </a>
										<a href="goods.php?id=232" title="包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松" target="_blank" class="name">包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松</a>
										<p class="pri">￥274.00</p>
									</li>
									<li class="first">
										<a href="goods.php?id=248" title="巴肯特烤涮自助时尚汇" target="_blank" class="img">
											<div class="mask"></div>
											<img src="${ctx}/statics/images/201602/thumb_${ctx}/statics/images/248_thumb_G_1455691419594.jpg" alt="巴肯特烤涮自助时尚汇" /> </a>
										<a href="goods.php?id=248" title="巴肯特烤涮自助时尚汇" target="_blank" class="name">巴肯特烤涮自助时尚汇</a>
										<p class="pri">￥56.10</p>
									</li>
								</ul>
							</div>
							<p class="more">
								<a href="./" target="_blank" title="继续购物">继续购物 &gt;</a>
							</p>
						</div>

					</div>
					<script>
						/*第一种形式 第二种形式 更换显示样式*/
						function setTabCatGoods(name, cursel, n) {
							for(i = 1; i <= n; i++) {
								var menu = document.getElementById(name + i);
								var con = document.getElementById("con_" + name + "_" + i);
								con.style.display = i == cursel ? "block" : "none";
								menu.className = i == cursel ? "line1" : "line2";
							}
						}
					</script>
					<div class="middle collect">
						<div class="line1" id="tab1" onmouseover="setTabCatGoods('tab',1,2)">
							<div class="title"><i></i><span>商品收藏</span></div>
						</div>
						<div class="line2" id="tab2" onmouseover="setTabCatGoods('tab',2,2)">
							<div class="title"><i></i><span>店铺关注</span></div>
						</div>
						<div style="height:0px;line-height:0px;clear:both"></div>
						<div class="tab_con" style="width:100%">
							<div class="" id="con_tab_1">
								<div class="colList clearfix">
									<div class="colFrame">
										<ul style="left: 0px;" class="clearfix">

											<li class="first">
												<a href="goods.php?id=32" title="Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装" target="_blank" class="img"> <img src="${ctx}/statics/images/32_thumb_G_1437506920994.jpg" alt="Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装" /> <span>￥260.00</span> </a>
												<a href="goods.php?id=32" title="Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装" target="_blank" class="name">Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装</a>
											</li>

											<li class="first">
												<a href="goods.php?id=88" title="家用静音办公室空调加湿器 香薰迷你大容量净化特价" target="_blank" class="img"> <img src="${ctx}/statics/images/88_thumb_G_1437522788663.jpg" alt="家用静音办公室空调加湿器 香薰迷你大容量净化特价" /> <span>￥100.00</span> </a>
												<a href="goods.php?id=88" title="家用静音办公室空调加湿器 香薰迷你大容量净化特价" target="_blank" class="name">家用静音办公室空调加湿器 香薰迷你大容量净化特价</a>
											</li>

											<li class="first">
												<a href="goods.php?id=91" title="海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌" target="_blank" class="img"> <img src="${ctx}/statics/images/91_thumb_G_1437522939065.jpg" alt="海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌" /> <span>￥399.00</span> </a>
												<a href="goods.php?id=91" title="海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌" target="_blank" class="name">海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌</a>
											</li>

											<li class="first">
												<a href="goods.php?id=97" title="除湿机家用抽湿机20B 地下室别墅吸湿器除湿器" target="_blank" class="img"> <img src="${ctx}/statics/images/97_thumb_G_1437523257758.jpg" alt="除湿机家用抽湿机20B 地下室别墅吸湿器除湿器" /> <span>￥259.00</span> </a>
												<a href="goods.php?id=97" title="除湿机家用抽湿机20B 地下室别墅吸湿器除湿器" target="_blank" class="name">除湿机家用抽湿机20B 地下室别墅吸湿器除湿器</a>
											</li>

											<li class="first">
												<a href="goods.php?id=86" title="海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保" target="_blank" class="img"> <img src="${ctx}/statics/images/86_thumb_G_1437522610059.jpg" alt="海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保" /> <span>￥500.00</span> </a>
												<a href="goods.php?id=86" title="海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保" target="_blank" class="name">海尔HGS-2164手持蒸汽挂烫机家用挂式电熨斗熨烫机正品全国联保</a>
											</li>

											<li class="first">
												<a href="goods.php?id=103" title="Galanz/格兰仕 G90F25CN3L-C2(G2) 微波炉 光波炉 正品" target="_blank" class="img"> <img src="${ctx}/statics/images/103_thumb_G_1437523455426.jpg" alt="Galanz/格兰仕 G90F25CN3L-C2(G2) 微波炉 光波炉 正品" /> <span>￥359.00</span> </a>
												<a href="goods.php?id=103" title="Galanz/格兰仕 G90F25CN3L-C2(G2) 微波炉 光波炉 正品" target="_blank" class="name">Galanz/格兰仕 G90F25CN3L-C2(G2) 微波炉 光波炉 正品</a>
											</li>

										</ul>
									</div>
									<p class="more">
										<a href="user.php?act=collection_list" title="查看收藏的所有商品">查看收藏的所有商品 &gt;</a>
									</p>
								</div>

							</div>
							<div id="con_tab_2" style="display:none">
								<div class="shopList clearfix">
									<div class="colFrame">
										<ul style="left: 0px;" class="clearfix">

											<li class="first">
												<a href="supplier.php?go=index&suppId=1&id=0" title="天天果园" target="_blank" class="img">
													<div class="mask"></div>

													<img src="${ctx}/statics/images/original1_220x220.jpg" alt="天天果园" />

												</a>
												<a href="supplier.php?go=index&suppId=1&id=0" title="天天果园" target="_blank" class="name">天天果园</a>
											</li>

											<li class="first">
												<a href="supplier.php?go=index&suppId=5&id=0" title="L&amp;L" target="_blank" class="img">
													<div class="mask"></div>

													<img src="${ctx}/statics/images/original5_220x220.jpg" alt="L&amp;L" />

												</a>
												<a href="supplier.php?go=index&suppId=5&id=0" title="L&amp;L" target="_blank" class="name">L&amp;L</a>
											</li>

											<li class="first">
												<a href="supplier.php?go=index&suppId=6&id=0" title="伊人化妆" target="_blank" class="img">
													<div class="mask"></div>

													<img src="${ctx}/statics/images/original6_220x220.jpg" alt="伊人化妆" />

												</a>
												<a href="supplier.php?go=index&suppId=6&id=0" title="伊人化妆" target="_blank" class="name">伊人化妆</a>
											</li>

											<li class="first">
												<a href="supplier.php?go=index&suppId=7&id=0" title="金星家纺" target="_blank" class="img">
													<div class="mask"></div>

													<img src="${ctx}/statics/images/original7_220x220.jpg" alt="金星家纺" />

												</a>
												<a href="supplier.php?go=index&suppId=7&id=0" title="金星家纺" target="_blank" class="name">金星家纺</a>
											</li>

										</ul>
									</div>
									<p class="more">
										<a href="user.php?act=follow_shop" title="查看收藏的所有店铺">查看收藏的所有店铺 &gt;</a>
									</p>
								</div>

							</div>
						</div>
					</div>
				</div>

				<div class="box">

				</div>

			</div>
		</div>
		<div class="pop-main pop-compare">
			<div class="pop-header"> <span>温馨提示</span>
				<a class="pop-close" href="javascript:;" title="关闭"></a>
			</div>
			<div class="pop-con"> <i class="pop-icon"></i>
				<p class="pop-text" style="padding-top: 20px;">您确定要取消该订单吗？取消订单后，不能恢复。</p>
				<div class="pop-btn">
					<a href="javascript:;" class="main-bg-color sure-btn">确定</a>
					<a class="cancel-btn">取消</a><span class="clear"></span></div>
			</div>
		</div>
		<div class="pop-mask"></div>
<%@include file="foot.jsp" %>

</html>