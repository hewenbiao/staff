<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>index</title>

		<base href="#">

		<meta name="Keywords" content="网软志成B2B2C多用户商城系统网店系统,商城系统,三级分销系统,免费商城系统,多用户商城系统,微信商城分销系统,微信商城系统">
		<meta name="Description" content="网软志成B2B2C多用户商城系统网软志成网上商店系统是一款B2B2C独立网店系统，适合企业及个人快速构建个性化网上商店。系统是基于PHP语言及MYSQL数据库构架开发的跨平台开源程序，网上商城系统,免费网店,淘宝开店,网店系统下载。">
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<title>网软志成B2B2C电商平台系统多用户商城系统模板</title>
		<link rel="stylesheet" href="${ctx}/statics/css/index.css"/>
		<link rel="stylesheet" href="${ctx}/statics/css/skin.css"/>
		<link rel="alternate" type="application/rss+xml" title="RSS|网软志成B2B2C电商平台系统多用户商城系统模板" href="#">
		<link rel="stylesheet" href="${ctx}/statics/css/style2015.css"/>
		<script type="text/javascript" src="${ctx}/statics/js/jquery-1.9.1.min.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/jump.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/tab.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/jquery-lazyload.js"></script>
		<script type="text/javascript">
			var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
			var btn_buy = "购买";
			var is_cancel = "取消";
			var select_spe = "请选择商品属性";
		</script>
		<script type="text/javascript" src="${ctx}/statics/js/jquery.json.js"></script>

		<script type="text/javascript" src="${ctx}/statics/js/common.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/index.js"></script>

	</head>

	<body style="cursor: auto;">
		<link rel="stylesheet" href="${ctx}/statics/css/wrzc_common.css"/>
		<script language="javascript">
			<!--
			/*屏蔽所有的js错误*/
			function killerrors() {
				return true;
			}
			window.onerror = killerrors;
			//-->
		</script>
		<script type="text/javascript" src="${ctx}/statics/js/page.js"></script>
		<script type="text/javascript" src="${ctx}/statics/js/bubbleup.js"></script>
		<div id="site-nav">
			<div class="sn-container w1210">
				<script type="text/javascript" src="${ctx}/statics/js/utils.js"></script>
				<script type="text/javascript" src="${ctx}/statics/js/common.min.js"></script>
				<font id="login-info" class="sn-login-info">
					<em>欢迎光临本店!</em>
					<a class="sn-login main-color" href="#">请登录</a>
					<a class="sn-login main-color" href="#">微信登陆</a>
					<a class="sn-register" href="#">免费注册</a>
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
		<script>
			header_login();

			function header_login() {
				Ajax.call('login_act_ajax.php', '', loginactResponse, 'GET', 'JSON', '1', '1');
			}

			function loginactResponse(result) {
				var MEMBERZONE = document.getElementById('login-info');
				MEMBERZONE.innerHTML = result.memberinfo;
			}
		</script>
		<div class="header">
			<div class="w1210">
				<div class="mall-logo">
					<a href="#"><img src="${ctx}/statics/images/logo.gif" width="250"></a>
				</div>
				<div class="mall-logo-right">
					<a href="#"></a>
				</div>
				<div class="mall-search">
					<div id="search-tips" style="display:none;"></div>
					<form class="mallSearch-form" method="get" name="searchForm" id="searchForm" action="http://b2b2c.wygk.cn/search.php" onsubmit="return checkSearchForm()">
						<input type="hidden" name="type" id="searchtype" value="0">
						<div class="mallSearch-input">
							<ul class="search-type">
								<li class="cur" num="0">宝贝<i class="icon-down"></i></li>
								<li num="1">店铺<i class="icon-down"></i></li>
							</ul>
							<div class="s-combobox">
								<div class="s-combobox-input-wrap">
									<input aria-haspopup="true" role="combobox" class="s-combobox-input" name="keywords" id="keyword" tabindex="9" accesskey="s" onkeyup="STip(this.value, event);" autocomplete="off" value="请输入关键词" onfocus="if(this.value==&#39;请输入关键词&#39;){this.value=&#39;&#39;;}else{this.value=this.value;}" onblur="if(this.value==&#39;&#39;)this.value=&#39;请输入关键词&#39;" type="text">
								</div>
							</div>
							<input type="submit" value="搜索" class="button main-bg-color">
						</div>
					</form>
					<ul class="hot-query">
						<li style="border-left: none;">
							<a href="#">网软志成</a>
						</li>
						<li>
							<a href="#">iPhone5</a>
						</li>
						<li>
							<a href="#">NZXT</a>
						</li>
						<li>
							<a href="#">旅行包</a>
						</li>
						<li>
							<a href="#">格力电暖器</a>
						</li>
						<li>
							<a href="#">年货先到家</a>
						</li>
						<li>
							<a href="#">MX2</a>
						</li>
					</ul>
				</div>
				<ul class="header-right">
					<li>
						<a href="#"><img src="${ctx}/statics/images/7day.jpg"></a>
					</li>
					<li>
						<a href="#"><img src="${ctx}/statics/images/guarantee.jpg"></a>
					</li>
					<li>
						<a href="#"><img src="${ctx}/statics/images/delivery.jpg"></a>
					</li>
				</ul>
			</div>
		</div>
		<div class="all-nav">
			<div class="w1210">
				<div class="home-category fl">
					<a href="#">全部商品分类<i></i></a>
				</div>
				<div class="allnav fl" id="nav">
					<ul>
						<li>
							<a class="nav" href="#">首页</a>
						</li>
						<li>
							<a class="nav " href="#">食品生鲜</a>
						</li>
						<li>
							<a class="nav " href="#">店铺街</a>
						</li>
						<li>
							<a class="nav " href="#">团购</a>
						</li>
						<li>
							<a class="nav " href="#">预售</a>
						</li>
						<li>
							<a class="nav " href="#">拍卖</a>
						</li>
						<li>
							<a class="nav " href="#">礼包</a>
						</li>
						<li>
							<a class="nav " href="#">积分商城</a>
						</li>
						<li>
							<a class="nav " href="#">优惠活动</a>
						</li>
						<li>
							<a class="nav " href="#">电商资讯</a>
						</li>
						<li>
							<a class="nav " href="#">家用电器</a>
						</li>
					</ul>
					<div class="wrap-line" style="left: 0px; width: 72px;"><span style="left:15px;"></span></div>
				</div>
				<div class="all-cat main-bg-color">
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">家用电器</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="item-channels">
									<div class="channels">
										<a href="#">饮水机<i>&gt;</i></a>
									</div>
								</div>

								<div class="item-channels">
									<div class="channels">
										<a href="#">微波炉<i>&gt;</i></a>
									</div>
								</div>

								<div class="item-channels">
									<div class="channels">
										<a href="#">果蔬解毒机<i>&gt;</i></a>
									</div>
								</div>

								<div class="item-channels">
									<div class="channels">
										<a href="#">剃须刀<i>&gt;</i></a>
									</div>
								</div>

								<div class="item-channels">
									<div class="channels">
										<a href="#">血糖仪<i>&gt;</i></a>
									</div>
								</div>

								<div class="subitems">
									<dl class="fore1">
										<dt> <a href="#">大家电<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">平板电视</a>

											<a href="#">空调冰箱</a>

											<a href="#">洗衣机</a>

											<a href="#">家庭影院</a>

											<a href="#">烟机/灶具</a>

											<a href="#">热水器</a>

											<a href="#">消毒柜/洗碗机</a>

											<a href="#">冷柜/冰吧</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">生活电器<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">电风扇</a>

											<a href="#">净化器</a>

											<a href="#">加湿器</a>

											<a href="#">吸尘器</a>

											<a href="#">挂烫机/熨斗</a>

											<a href="#">取暖电器</a>

											<a href="#">饮水机</a>

											<a href="#">其它生活电器</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">厨房电器<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">电饭煲</a>

											<a href="#">微波炉</a>

											<a href="#">电磁炉</a>

											<a href="#">电饼铛/烧烤盘</a>

											<a href="#">电炖锅</a>

											<a href="#">果蔬解毒机</a>

											<a href="#">养生壶/煎药壶</a>

											<a href="#">其它厨房电器</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">个护健康<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">剃须刀</a>

											<a href="#">电吹风</a>

											<a href="#">按摩椅</a>

											<a href="#">足浴盆</a>

											<a href="#">健康秤/厨房秤</a>

											<a href="#">血糖仪</a>

											<a href="#">计步器/脂肪检测</a>

											<a href="#">其它健康电器</a>

										</dd>
									</dl>

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

										<a href="#"> <img src="${ctx}/statics/images/1437433779804083933.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437433767280039957.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437433840630073088.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437433795060834486.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437433823734794032.gif" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437430441802693617.png" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437434172223731860.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437430374768843113.jpg" width="90" height="36"> </a>

									</div>
								</div>
								<div class="item-promotions">
									<a href="#"><img src="${ctx}/statics/images/1453362914810023437.jpg" width="182"></a>
									<a href="#"><img src="${ctx}/statics/images/1453362954584810931.jpg" width="182"></a>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">手机、数码、通信</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="item-channels">
									<div class="channels">
										<a href="#">手机耳机<i>&gt;</i></a>
									</div>
								</div>

								<div class="item-channels">
									<div class="channels">
										<a href="#">智能手表<i>&gt;</i></a>
									</div>
								</div>

								<div class="subitems">
									<dl class="fore1">
										<dt> <a href="#">热卖手机<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">三星盖乐世</a>

											<a href="#">iPhone</a>

											<a href="#">小米特供</a>

											<a href="#">魅族手机</a>

											<a href="#">华为荣耀</a>

											<a href="#">联通4G</a>

											<a href="#">电信4G</a>

											<a href="#">移动4G</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">手机配件<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">电池</a>

											<a href="#">移动电源</a>

											<a href="#">蓝牙耳机</a>

											<a href="#">充电器</a>

											<a href="#">创意配件</a>

											<a href="#">手机饰品</a>

											<a href="#">手机耳机</a>

											<a href="#">保护套</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">数码影音<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">数码相机</a>

											<a href="#">单反相机</a>

											<a href="#">拍立得</a>

											<a href="#">运动相机</a>

											<a href="#">摄像机</a>

											<a href="#">户外器材</a>

											<a href="#">数码相框</a>

											<a href="#">影棚器材</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">智能设备<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">智能手环</a>

											<a href="#">智能手表</a>

											<a href="#">智能眼镜</a>

											<a href="#">运动跟踪器</a>

											<a href="#">智能家居</a>

											<a href="#">体感车</a>

										</dd>
									</dl>

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

										<a href="#"> <img src="${ctx}/statics/images/1437430325761583576.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437430309280593896.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437430289405669696.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437433854063455383.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437430574094435270.png" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437430366575268584.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437430460743432443.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437430298555384602.jpg" width="90" height="36"> </a>

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">电脑、办公</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

										<a href="#"> <img src="${ctx}/statics/images/1437434636974815215.jpg" width="90" height="36"> </a>

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">家居、家具、家装、厨具</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="item-channels">
									<div class="channels">
										<a href="#">家纺<i>&gt;</i></a>
									</div>
								</div>

								<div class="item-channels">
									<div class="channels">
										<a href="#">吊灯<i>&gt;</i></a>
									</div>
								</div>

								<div class="subitems">
									<dl class="fore1">
										<dt> <a href="#">家纺<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">床品套件</a>

											<a href="#">被子</a>

											<a href="#">蚊帐</a>

											<a href="#">凉席</a>

											<a href="#">床单被罩</a>

											<a href="#">毛巾浴巾</a>

											<a href="#">床垫/床褥</a>

											<a href="#">窗帘/窗纱</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">家具<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">卧室家具</a>

											<a href="#">客厅家具</a>

											<a href="#">餐厅家具</a>

											<a href="#">书房家具</a>

											<a href="#">储物家具</a>

											<a href="#">阳台/户外</a>

											<a href="#">沙发</a>

											<a href="#">鞋架/衣帽架</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">厨具<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">烹饪锅具</a>

											<a href="#">刀剪菜板</a>

											<a href="#">厨房配件</a>

											<a href="#">水具酒具</a>

											<a href="#">餐具</a>

											<a href="#">茶具/咖啡具</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">灯具<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">台灯</a>

											<a href="#">吸顶灯</a>

											<a href="#">筒灯射灯</a>

											<a href="#">LED灯</a>

											<a href="#">落地灯</a>

											<a href="#">应急灯/手电</a>

											<a href="#">装饰灯</a>

											<a href="#">吊灯</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">家装软饰<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">桌布/罩件</a>

											<a href="#">地毯地垫</a>

											<a href="#">沙发垫套/椅垫</a>

											<a href="#">帘艺隔断</a>

											<a href="#">相框/照片墙</a>

											<a href="#">装饰字画</a>

											<a href="#">墙贴/装饰贴</a>

											<a href="#">摆件花瓶</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">生活日用<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">收纳用品</a>

											<a href="#">雨伞雨具</a>

											<a href="#">浴室用品</a>

											<a href="#">缝纫/针织用品</a>

											<a href="#">洗晒/熨烫</a>

											<a href="#">净化除味</a>

										</dd>
									</dl>

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

										<a href="#"> <img src="${ctx}/statics/images/1437428980225446797.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437432889680565833.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437436852699771679.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437432522356081645.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437431622196514430.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437429301820829673.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437434929995564906.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437434636974815215.jpg" width="90" height="36"> </a>

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">男装、女装、内衣、珠宝</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">
									<dl class="fore1">
										<dt> <a href="#">女装馆<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">连衣裙</a>

											<a href="#">连体裤</a>

											<a href="#">棉麻T恤</a>

											<a href="#">时尚套装</a>

											<a href="#">复古旗袍</a>

											<a href="#">牛仔裤</a>

											<a href="#">短外套</a>

											<a href="#">防晒衫</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">内衣馆<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">聚拢文胸</a>

											<a href="#">薄款文胸</a>

											<a href="#">无钢圈文胸</a>

											<a href="#">女士内裤</a>

											<a href="#">男士内裤</a>

											<a href="#">夏季睡衣</a>

											<a href="#">性感睡衣</a>

											<a href="#">瘦腿袜</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">男装馆<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">休闲裤</a>

											<a href="#">牛仔裤</a>

											<a href="#">夹克</a>

											<a href="#">风衣</a>

											<a href="#">针织衫</a>

											<a href="#">长袖衬衫</a>

											<a href="#">休闲短裤</a>

											<a href="#">POLO衫</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">户外鞋服<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">跑步鞋</a>

											<a href="#">篮球鞋</a>

											<a href="#">帆布鞋</a>

											<a href="#">羽毛球鞋</a>

											<a href="#">迷彩裤</a>

											<a href="#">沙滩鞋</a>

											<a href="#">钓鱼服</a>

											<a href="#">登山鞋</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">女鞋馆<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">高跟凉拖</a>

											<a href="#">平底鞋</a>

											<a href="#">高跟鞋</a>

											<a href="#">坡跟单鞋</a>

											<a href="#">浅口单鞋</a>

											<a href="#">帆布鞋</a>

											<a href="#">乐福鞋</a>

											<a href="#">松糕鞋</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">箱包馆<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">单肩女包</a>

											<a href="#">手提女包</a>

											<a href="#">女士钱包</a>

											<a href="#">男士双肩</a>

											<a href="#">男士钱包</a>

											<a href="#">旅行箱</a>

											<a href="#">拉杆箱</a>

											<a href="#">拉杆包</a>

										</dd>
									</dl>

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

										<a href="#"> <img src="${ctx}/statics/images/1437432530915190983.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437432607921594733.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437432540121764652.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437432618356392882.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437436184083765295.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437436548477690017.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437434684850488373.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437431622196514430.jpg" width="90" height="36"> </a>

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">个护化妆、清洁用品</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">
									<dl class="fore1">
										<dt> <a href="#">香水彩妆<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">香水</a>

											<a href="#">底妆</a>

											<a href="#">腮红</a>

											<a href="#">眼部</a>

											<a href="#">唇部</a>

											<a href="#">美甲</a>

											<a href="#">美容工具</a>

											<a href="#">套装</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">面部护肤<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">清洁</a>

											<a href="#">护肤</a>

											<a href="#">面膜</a>

											<a href="#">剃须</a>

											<a href="#">套装</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">洗发护发<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">洗发</a>

											<a href="#">护发</a>

											<a href="#">染发</a>

											<a href="#">造型</a>

											<a href="#">假发</a>

											<a href="#">套装</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">身体护肤<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">沐浴</a>

											<a href="#">润肤</a>

											<a href="#">颈部</a>

											<a href="#">手足</a>

											<a href="#">纤体塑形</a>

											<a href="#"> 美胸</a>

											<a href="#">套装</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">口腔护理<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">牙膏/牙粉</a>

											<a href="#">牙刷/牙线</a>

											<a href="#">漱口水</a>

											<a href="#">套装</a>

										</dd>
									</dl>

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

										<a href="#"> <img src="${ctx}/statics/images/1437428736611050860.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437428885582505638.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437429603999601355.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437428934219489398.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437429934755120717.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437429723052152963.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437430106997787476.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437428980225446797.jpg" width="90" height="36"> </a>

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">酒类饮料</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">
									<dl class="fore1">
										<dt> <a href="#">酒水<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">白酒</a>

											<a href="#">啤酒</a>

											<a href="#">葡萄酒/果酒</a>

											<a href="#">黄酒/米酒</a>

											<a href="#">养生酒</a>

											<a href="#">预调酒</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">冲调饮品<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">蜂蜜</a>

											<a href="#">成人奶粉</a>

											<a href="#">豆浆/豆奶粉</a>

											<a href="#">茶叶</a>

											<a href="#">奶茶</a>

											<a href="#">麦片谷物</a>

											<a href="#">咖啡</a>

											<a href="#">果味冲调</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">饮料饮品<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">果蔬汁</a>

											<a href="#">茶饮料</a>

											<a href="#">碳酸饮料</a>

											<a href="#">功能饮料</a>

											<a href="#">纯牛奶</a>

											<a href="#">酸奶</a>

											<a href="#">风味奶</a>

											<a href="#">植物蛋白饮料</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">茗茶<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">铁观音</a>

											<a href="#">普洱</a>

											<a href="#">龙井</a>

											<a href="#">绿茶</a>

											<a href="#">红茶</a>

											<a href="#">花果茶</a>

											<a href="#">养生茶</a>

											<a href="#">其他茶</a>

										</dd>
									</dl>

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">鞋靴、箱包、钟表、奢侈品</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">运动户外</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">汽车、汽车用品</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">母婴、玩具乐器</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">
									<dl class="fore1">
										<dt> <a href="#">孕婴奶粉<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">特配奶粉</a>

											<a href="#">孕妈奶粉</a>

											<a href="#">pre段</a>

											<a href="#">1段</a>

											<a href="#">2段</a>

											<a href="#">3段</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">营养/辅食<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">米粉</a>

											<a href="#">果汁/泥</a>

											<a href="#">面食类</a>

											<a href="#">宝宝零食</a>

											<a href="#">DHA</a>

											<a href="#">清火开胃</a>

											<a href="#">钙铁锌</a>

											<a href="#">益生菌</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">孕婴洗护<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">洗衣液/皂</a>

											<a href="#">宝宝沐浴</a>

											<a href="#">儿童防晒</a>

											<a href="#">防蚊/驱蚊</a>

											<a href="#">爽身粉</a>

											<a href="#">奶瓶清洗</a>

											<a href="#">孕妇护肤</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">喂养用品<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">奶嘴奶瓶</a>

											<a href="#">驱蚊用品</a>

											<a href="#">浴室用品</a>

											<a href="#">水壶/水杯</a>

											<a href="#">吸奶器</a>

											<a href="#">理发器</a>

											<a href="#">防溢乳垫</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">车床/床品<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">安全座椅</a>

											<a href="#">手推车</a>

											<a href="#">婴儿床</a>

											<a href="#">餐椅</a>

											<a href="#">三轮车</a>

											<a href="#">儿童家具</a>

											<a href="#">睡袋/抱被</a>

											<a href="#">凉席/蚊帐</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">孕妈专区<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">孕妇裙</a>

											<a href="#">打底裤</a>

											<a href="#">防辐射服</a>

											<a href="#">腰凳</a>

											<a href="#">妈咪包</a>

											<a href="#">收腹带</a>

											<a href="#">哺乳文胸</a>

											<a href="#">孕妇内裤</a>

										</dd>
									</dl>

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

										<a href="#"> <img src="${ctx}/statics/images/1437438555681581254.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437429559203552370.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437432901296336878.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437434684850488373.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437438450967200189.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437438440162456222.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437429042714176893.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437438523104074504.jpg" width="90" height="36"> </a>

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">食品、酒类、生鲜、特产</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">
									<dl class="fore1">
										<dt> <a href="#">进口水果<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">释迦芭乐</a>

											<a href="#">樱桃车厘子</a>

											<a href="#">芒果桃李</a>

											<a href="#">龙眼荔枝</a>

											<a href="#">提子葡萄</a>

											<a href="#">奇异果猕猴桃</a>

											<a href="#">凤梨蓝莓</a>

											<a href="#">榴莲山竹</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">糖果巧克力<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">巧克力</a>

											<a href="#">口香糖</a>

											<a href="#">棒棒糖</a>

											<a href="#">软糖</a>

											<a href="#">奶糖</a>

											<a href="#">QQ糖</a>

											<a href="#">果冻</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">牛奶乳品<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">常温奶</a>

											<a href="#">乳饮料</a>

											<a href="#">儿童奶</a>

											<a href="#">酸奶</a>

											<a href="#">豆奶</a>

											<a href="#">低脂奶</a>

											<a href="#">全脂奶</a>

											<a href="#">成人奶粉</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">坚果炒货<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">核桃</a>

											<a href="#">夏威夷果</a>

											<a href="#">碧根果</a>

											<a href="#">开心果</a>

											<a href="#">腰果</a>

											<a href="#">瓜子</a>

											<a href="#">花生</a>

											<a href="#">杏仁</a>

										</dd>
									</dl>
									<dl class="fore1">
										<dt> <a href="#">蜜饯果干<i>&gt;</i></a> </dt>
										<dd>

											<a href="#">红枣</a>

											<a href="#">莓类</a>

											<a href="#">葡萄干</a>

											<a href="#">芒果干</a>

											<a href="#">香蕉干</a>

											<a href="#">山楂片</a>

											<a href="#">橄榄</a>

											<a href="#">其他</a>

										</dd>
									</dl>

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

										<a href="#"> <img src="${ctx}/statics/images/1437437261557386149.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437431062768997274.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437431098320240967.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437431609681889286.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437431645949723761.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437438523104074504.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437432512022024124.jpg" width="90" height="36"> </a>

										<a href="#"> <img src="${ctx}/statics/images/1437431595688289538.jpg" width="90" height="36"> </a>

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">营养保健</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">图书、音像、电子书</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">彩票、旅行、充值、票务</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="list">
						<dl class="cat">
							<dt class="cat-name"> <a href="#">理财、众筹、白条、保险</a> </dt>
							<i>&gt;</i>
						</dl>
						<div class="categorys">
							<div class="item-left fl">

								<div class="subitems">

								</div>
							</div>
							<div class="item-right fr">
								<div class="item-brands">
									<div class="brands-inner">

									</div>
								</div>

							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
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
					scale: 70
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
		</script>
		<script type="text/javascript" src="${ctx}/statics/js/nav.js"></script>
		<div class="banner">
			<ul id="fullScreenSlides" class="full-screen-slides">

				<li style="background: url(&${pageContext.request.contextPath }/statics/img/quot;data/afficheimg/20150722zsmllz.jpg&quot;) center center no-repeat; display: none;">
					<a href="#">&nbsp;</a>
				</li>
				<li style="background: url(&quot;${pageContext.request.contextPath }/statics/img/data/afficheimg/20150722uzphik.jpg&quot;) center center no-repeat; display: none;">
					<a href="#">&nbsp;</a>

				</li>

				<li style="background: url(&quot;${pageContext.request.contextPath }/statics/img/data/afficheimg/20150723axsewo.jpg&quot;)center center no-repeat; display: none;">
					<a href="#">&nbsp;</a>
				</li>

			</ul>
			<ul class="full-screen-slides-pagination">
				<li class="">
					<a href="#">1</a>
				</li>
				<li class="current">
					<a href="#">2</a>
				</li>
				<li class="">
					<a href="#">3</a>
				</li>
			</ul>
			<div class="focus-trigeminy">
				<div class="carousel">
					<ul class="box" style="width: 1584px;">

						<li>
							<a href="#"><img src="${ctx}/statics/images/1437497920196427586.jpg" alt="首页幻灯片-小图下1"></a>
						</li>

						<li>
							<a href="#"><img src="${ctx}/statics/images/1437497944523762531.jpg" alt="首页幻灯片-小图下2"></a>
						</li>

						<li>
							<a href="#"><img src="${ctx}/statics/images/1437497969836917729.jpg" alt="首页幻灯片-小图下3"></a>
						</li>

						<li>
							<a href="#"><img src="${ctx}/statics/images/1453445559337605969.jpg" alt="首页幻灯片-小图下4"></a>
						</li>

						<li>
							<a href="#"><img src="${ctx}/statics/images/1453446324678170271.jpg" alt="首页幻灯片-小图下5"></a>
						</li>

						<li>
							<a href="#"><img src="${ctx}/statics/images/1453445653632359411.jpg" alt="首页幻灯片-小图下6"></a>
						</li>
					</ul>
				</div>
				<a href="#">&lt;</a>
				<a href="#">&gt;</a>
			</div>
			<script type="text/javascript">
				$(function() {
					$('.focus-trigeminy').hover(function() {
						$('.prev,.next').fadeTo('fast', 0.4);
					}, function() {
						$('.prev,.next').fadeTo('fast', 0);
					})
					Move(".next", ".prev", ".box", ".focus-trigeminy", "3");
				})
			</script>
			<div class="right-sidebar">
				<div class="sale-discount">
					<h3>限时抢购</h3>
					<ul class="saleDiscount" style="width: 208px;">

						<li>
							<div class="sale-con">
								<p class="time-remain" count_down="86451210">
									<span id="leftTime0"> 
            	<em time_id="d" class="main-bg-color">1000</em> 天 
                <em time_id="h" class="main-bg-color">14</em> 小时
                <em time_id="m" class="main-bg-color">13</em> 分 
                <em time_id="s" class="main-bg-color">30</em> 秒 
            </span>
								</p>
								<p class="goods-thumb">
									<a href="#"><img data-original="images/201602/thumb_img/270_thumb_G_1456452662995.jpg" <img src="${ctx}/statics/images/270_thumb_G_1456452662995.jpg" alt="五粮液 45度小酒版 水晶礼盒装 浓香型白酒 官方授权 酒厂直供 中国名酒 250ML" style="display: inline;"></a>
								</p>
								<p class="goods-name">
									<a href="#">五粮液 45度小酒版 水晶礼盒装 浓香型白酒 官...</a>
								</p>
								<p class="goods-price">
									<span class="main-color"> 
           
          ¥200.0 
           
          </span>
									<span class="goods-discount main-color">7.2折</span>
								</p>
							</div>
						</li>

					</ul>
					<div class="arrow pre" style="opacity: 0;"></div>
					<div class="arrow next" style="opacity: 0;"></div>
				</div>
				<script type="text/javascript">
					Move(".next", ".pre", ".saleDiscount", ".sale-discount", "1");
				</script>

				<div class="proclamation">
					<ul class="tabs-nav">
						<li class="tabs-selected">
							<h3>商城公告</h3>
						</li>
						<li>
							<h3>招商入驻</h3>
						</li>
					</ul>

					<div class="tabs-panel">
						<ul class="mall-news">
							<li>
								<a target="_blank" href="#">商家帮助指南 </a>
							</li>
							<li>
								<a target="_blank" href="#">供货商(入驻商文章标题) </a>
							</li>
						</ul>
					</div>
					<div class="tabs-panel tabs-hide">
						<a href="#">&nbsp;</a>
						<a href="#">
							<i class="icon-cog"></i> 登录商家管理中心
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="w1210 ad-groups">
			<div class="mc">
				<div class="sc-list">

					<div class="item w-bg">
						<a class="s-img" target="_blank" href="#"><img width="242px" height="350px" <img src="${ctx}/statics/images/1457338135729533924.jpg"></a>
					</div>

					<div class="item w-bg">
						<a class="s-img" target="_blank" href="#"><img width="242px" height="350px" <img src="${ctx}/statics/images/1457338148207873303.jpg"></a>
					</div>

					<div class="item w-bg">
						<a class="s-img" target="_blank" href="#"><img width="242px" height="350px" <img src="${ctx}/statics/images/1457338162505758353.jpg"></a>
					</div>

					<div class="item w-bg">
						<a class="s-img" target="_blank" href="#"><img width="242px" height="350px" <img src="${ctx}/statics/images/1457338173529319809.jpg"></a>
					</div>
				</div>
			</div>
		</div>
		<div class="w1210 store-wall">
			<a class="store-wall-title" href="#">店铺街<span>推荐店铺</span></a>
			<div class="store-wall-content">
				<div class="store-wall-ad">

					<table cellpadding="0" cellspacing="0">
						<tbody>
							<tr>
								<td>
									<a href="#"><img src="${ctx}/statics/images/1453531168427720925.jpg" width="310" height="330" border="0"></a>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="index-store" class="store-wall-con">
					<div class="store-rec-slide">
						<ul class="store-rec-nav">
							<li class="selected" onclick="qiehuan(0)">热门店铺<i></i></li>
							<li onclick="qiehuan(1)">今日大牌<i></i></li>
						</ul>
						<ul class="store-rec-content">
							<li class="store-rec-pannel">
								<div class="store-con">
									<p style="position: absolute; z-index: 0; opacity: 1; display: block;" class="store-wall-pannel">

										<a class="store-item  item-row-0 item-col-0" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/logo_supplier5.jpg" title="L&amp;L" alt="L&amp;L" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-0 item-col-1" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/logo_supplier1.jpg" title="天天果园旗舰店" alt="天天果园旗舰店" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-0 item-col-2" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/logo_supplier7.jpg" title="金星家纺" alt="金星家纺" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-0 item-col-3" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-0 item-col-4" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item store-item-spe item-row-0 item-col-5" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-1 item-col-0" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-1 item-col-1" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-1 item-col-2" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-1 item-col-3" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-1 item-col-4" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item store-item-spe item-row-1 item-col-5" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-2 item-col-0" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-2 item-col-1" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-2 item-col-2" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-2 item-col-3" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-2 item-col-4" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item store-item-spe item-row-2 item-col-5" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-3 item-col-0" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-3 item-col-1" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-3 item-col-2" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative; top: 0px;">
										</a>

										<a class="store-item  item-row-3 item-col-3" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item  item-row-3 item-col-4" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

										<a class="store-item store-item-spe item-row-3 item-col-5" href="#">
											<img class="store-logo" <img src="${ctx}/statics/images/ad.jpg" title="虚位以待" alt="虚位以待" height="45" width="90" style="position: relative;">
										</a>

									</p>
								</div>
							</li>
						</ul>
					</div>
					<script>
						function qiehuan(num) {
							Ajax.call('other.php?act=supplier_tag', 'id=' + num, qiehuanResponse, 'GET', 'JSON');
						}

						function qiehuanResponse(result) {
							document.getElementById('index-store').innerHTML = result.result;
							$(".store-con img").each(function(k, img) {
								new JumpObj(img, 10);
							});
						}
					</script>
				</div>
			</div>
		</div>
		<div class="w1210 index-sale">
			<ul class="tabs-nav">
				<li class=""><i class="arrow"></i>
					<h3>疯狂抢购</h3>
				</li>
				<li class=""><i class="arrow"></i>
					<h3>热销排行</h3>
				</li>
				<li class=""><i class="arrow"></i>
					<h3>商城热卖</h3>
				</li>
				<li class=""><i class="arrow"></i>
					<h3>商城推荐</h3>
				</li>
				<li class="tabs-selected"><i class="arrow"></i>
					<h3>新品上市</h3>
				</li>
			</ul>
			<div class="tabs-panel sale-goods-list tabs-hide">
				<ul>

				</ul>
			</div>

			<div class="tabs-panel sale-goods-list tabs-hide">
				<ul>
					<li>
						<dl>
							<dt class="goods-name">
									<a target="_blank" href="#">苹果（Apple）iPhone 6 (A1586...</a>
								</dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#">
									<img data-original="images/201507/thumb_img/100_thumb_G_1437523484060.jpg" <img src="${ctx}/statics/images/loading.gif" alt="">
								</a>
							</dd>
							<dd class="goods-price">
								商城价：
								<em>
																				4888.00																			</em>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt class="goods-name">
									<a target="_blank" href="#">爱度AY800蓝牙音箱手机电脑迷你音响无线便携插...</a>
								</dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#">
									<img data-original="images/201507/thumb_img/200_thumb_G_1437534571298.jpg" <img src="${ctx}/statics/images/loading.gif" alt="">
								</a>
							</dd>
							<dd class="goods-price">
								商城价：
								<em>
																				98.00																			</em>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt class="goods-name">
									<a target="_blank" href="#">高端2015夏装新款修身淑坊女女装蕾丝短袖复女连...</a>
								</dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#">
									<img data-original="images/201507/thumb_img/51_thumb_G_1437519866381.jpg" <img src="${ctx}/statics/images/loading.gif" alt="">
								</a>
							</dd>
							<dd class="goods-price">
								商城价：
								<em>
																				199.00																			</em>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt class="goods-name">
									<a target="_blank" href="#">家用静音办公室空调加湿器 香薰迷你大容量净化特价</a>
								</dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#">
									<img data-original="images/201507/thumb_img/88_thumb_G_1437522788663.jpg" <img src="${ctx}/statics/images/loading.gif" alt="">
								</a>
							</dd>
							<dd class="goods-price">
								商城价：
								<em>
																				100.00																			</em>
							</dd>
						</dl>
					</li>
					<li>
						<dl>
							<dt class="goods-name">
									<a target="_blank" href="#">包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特...</a>
								</dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#">
									<img data-original="images/201507/thumb_img/_thumb_P_1438047501681.jpg" <img src="${ctx}/statics/images/loading.gif" alt="">
								</a>
							</dd>
							<dd class="goods-price">
								商城价：
								<em>
																				274.00																			</em>
							</dd>
						</dl>
					</li>
				</ul>
			</div>

			<div class="tabs-panel sale-goods-list tabs-hide">
				<ul>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米...</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201507/thumb_img/140_thumb_G_1437528915082.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥333.0 
           
          </em> </dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">宝雕 欧式双舌静音象牙白室内房门锁M87457 ...</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201602/thumb_img/280_thumb_G_1456453887329.jpg" <img src="${ctx}/statics/images/loading.gif" alt="宝雕 欧式双舌静音象牙白室内房门锁M87457 象牙白宝雕"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥99.0 
           
          </em> </dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">韩国原装进口lotte乐天 2%富足水蜜桃果汁饮...</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201603/thumb_img/287_thumb_G_1457592139010.jpg" <img src="${ctx}/statics/images/loading.gif" alt="韩国原装进口lotte乐天 2%富足水蜜桃果汁饮料240ml听装 夏季饮料"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥5.3 
           
          </em> </dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">康师傅优悦水550ml*24瓶（整箱）</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201602/thumb_img/273_thumb_G_1456452987184.jpg" <img src="${ctx}/statics/images/loading.gif" alt="康师傅优悦水550ml*24瓶（整箱）"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥19.9 
           
          </em> </dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">adj</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201805/thumb_img/401_thumb_G_1527042853249.jpg" <img src="${ctx}/statics/images/loading.gif" alt="adj"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥150.0 
           
          </em> </dd>
						</dl>
					</li>

				</ul>
			</div>

			<div class="tabs-panel sale-goods-list tabs-hide">
				<ul>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">沙宣垂坠质感润发乳750ml</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201507/thumb_img/153_thumb_G_1437530435593.jpg" <img src="${ctx}/statics/images/loading.gif" alt="沙宣垂坠质感润发乳750ml"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥90.0 
           
          </em> </dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">欧莱雅透明质酸水润洗发露400ml*2+透明质酸...</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201507/thumb_img/163_thumb_G_1437530957991.jpg" <img src="${ctx}/statics/images/loading.gif" alt="欧莱雅透明质酸水润洗发露400ml*2+透明质酸水润润发乳400ml"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥75.0 
           
          </em> </dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">宝雕 欧式双舌静音象牙白室内房门锁M87457 ...</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201602/thumb_img/280_thumb_G_1456453887329.jpg" <img src="${ctx}/statics/images/loading.gif" alt="宝雕 欧式双舌静音象牙白室内房门锁M87457 象牙白宝雕"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥99.0 
           
          </em> </dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">韩国原装进口lotte乐天 2%富足水蜜桃果汁饮...</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201603/thumb_img/287_thumb_G_1457592139010.jpg" <img src="${ctx}/statics/images/loading.gif" alt="韩国原装进口lotte乐天 2%富足水蜜桃果汁饮料240ml听装 夏季饮料"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥5.3 
           
          </em> </dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">L’OREAL/欧莱雅 精油润养洗发露700ml</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201507/thumb_img/158_thumb_G_1437530565110.jpg" <img src="${ctx}/statics/images/loading.gif" alt="L’OREAL/欧莱雅 精油润养洗发露700ml"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥40.0 
           
          </em> </dd>
						</dl>
					</li>

				</ul>
			</div>

			<div class="tabs-panel sale-goods-list">
				<ul>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">韩国进口X-5花生夹心巧克力棒盒装（24根）86...</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201507/thumb_img/26_thumb_G_1437505984631.jpg" <img src="${ctx}/statics/images/26_thumb_G_1437505984631.jpg" alt="韩国进口X-5花生夹心巧克力棒盒装（24根）864g" style="display: inline;"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥0.0 
           
          </em> </dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">优雅100 经典设计款全棉斜纹印花四件套</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201507/thumb_img/139_thumb_G_1437528892306.jpg" <img src="${ctx}/statics/images/139_thumb_G_1437528892306.jpg" alt="优雅100 经典设计款全棉斜纹印花四件套" style="display: inline;"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥189.0 
           
          </em> </dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔...</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201507/thumb_img/137_thumb_G_1437528855059.jpg" <img src="${ctx}/statics/images/137_thumb_G_1437528855059.jpg" alt="LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基" style="display: inline;"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥399.0 
           
          </em> </dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米...</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201507/thumb_img/140_thumb_G_1437528915082.jpg" <img src="${ctx}/statics/images/140_thumb_G_1437528915082.jpg" alt="雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床" style="display: inline;"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥333.0 
           
          </em> </dd>
						</dl>
					</li>

					<li>
						<dl>
							<dt class="goods-name"> <a target="_blank" href="#">苹果（Apple）iPhone 6 (A1586...</a> </dt>
							<dd class="goods-thumb">
								<a target="_blank" href="#"> <img data-original="images/201507/thumb_img/100_thumb_G_1437523484060.jpg" <img src="${ctx}/statics/images/100_thumb_G_1437523484060.jpg" alt="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机" style="display: inline;"> </a>
							</dd>
							<dd class="goods-price"> 商城价： <em> 
           
          ¥4888.0 
           
          </em> </dd>
						</dl>
					</li>

				</ul>
			</div>

		</div>
		<div class="w1210 floor-list">
			<div class="floor"></div>

			<div class="floor" floor="1" color="#e31939">
				<div class="floor-layout">
					<a href="#">
						<img src="${ctx}/statics/images/1453619944293013871.jpg" alt="" height="100" width="1210">
					</a>
					<div class="floor-con">
						<div class="floor-title">
							<h2>
						<span> 1F </span>
						<a href="#">家用电器</a>
					</h2>
							<ul class="floor-tabs-nav">
								<li class="floor-tabs-selected">
									<h3 style="border-color: #e31939 #e31939 #fff; color: #e31939;">精挑细选</h3>
								</li>
								<li class="">
									<h3>大家电</h3>
								</li>
								<li class="">
									<h3>生活电器</h3>
								</li>
								<li class="">
									<h3>厨房电器</h3>
								</li>
							</ul>
						</div>
						<script type="text/javascript">
							$(function() {
								var sWidth = $("#focus_5").width(); //获取焦点图的宽度（显示面积）
								var len = $("#focus_5 ul li").length; //获取焦点图个数
								var index = 0;
								var picTimer;
								//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
								var btn = "<div class='btn'>";

								for(var i = 0; i < len; i++) {
									btn += "<span></span>";
								}
								btn += "</div>";
								$("#focus_5").append(btn);
								$("#focus_5 .btnBg").css("opacity", 0.5);

								//为小按钮添加鼠标滑入事件，以显示相应的内容
								$("#focus_5 .btn span").css("opacity", 0.3).mouseover(function() {
									index = $("#focus_5 .btn span").index(this);
									showPics(index);
								}).eq(0).trigger("mouseover");

								//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
								$("#focus_5 ul").css("width", sWidth * (len));

								//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
								$("#focus_5").hover(function() {
									clearInterval(picTimer);
								}, function() {
									picTimer = setInterval(function() {
										showPics(index);
										index++;
										if(index == len) {
											index = 0;
										}
									}, 3000); //此4000代表自动播放的间隔，单位：毫秒
								}).trigger("mouseleave");

								//显示图片函数，根据接收的index值显示相应的内容
								function showPics(index) { //普通切换
									var nowLeft = -index * sWidth; //根据index值计算ul元素的left值
									$("#focus_5 ul").stop(true, false).animate({
										"left": nowLeft
									}, 300);
									$("#focus_5 .btn span").stop(true, false).animate({
										"opacity": "0.3"
									}, 300).eq(index).stop(true, false).animate({
										"opacity": "0.7"
									}, 300); //为当前的按钮切换到选中的效果
								}
							});
						</script>
						<div class="floor-content">
							<div class="floor-left" style="border-top: 1px #e31939 solid;">
								<div id="focus_5" class="floor-banner">
									<ul style="left: -540px; width: 810px;">
										<li>
											<a href="#"><img data-original="data/afficheimg/1453623806780579842.jpg" <img src="${ctx}/statics/images/1453623806780579842.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453699763740711815.jpg" <img src="${ctx}/statics/images/1453699763740711815.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453699795448891382.jpg" <img src="${ctx}/statics/images/1453699795448891382.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
									</ul>
									<div class="btn"><span style="opacity: 0.3;"></span><span style="opacity: 0.3;"></span><span style="opacity: 0.7;"></span></div>
								</div>

								<ul class="floor-words">
									<li>
										<a href="#">
											家具五金 </a>
									</li>
									<li>
										<a href="#">
											电风扇 </a>
									</li>
									<li>
										<a href="#">
											净化器 </a>
									</li>
									<li>
										<a href="#">
											加湿器 </a>
									</li>
									<li>
										<a href="#">
											吸尘器 </a>
									</li>
									<li>
										<a href="#">
											取暖电器 </a>
									</li>
									<li>
										<a href="#">
											饮水机 </a>
									</li>
									<li>
										<a href="#">
											电饭煲 </a>
									</li>
								</ul>
							</div>
							<div class="floor-right">

								<div class="floor-tabs-panel" style="border-top: 1px #e31939 solid;">
									<div class="goods" id="li_280">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/280_thumb_G_1456453887329.jpg" <img src="${ctx}/statics/images/280_thumb_G_1456453887329.jpg" alt="宝雕 欧式双舌静音象牙白室内房门锁M87457 象牙白宝雕" height="140" width="140" class="pic_img_280" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">宝雕 欧式双舌静音象牙白室内房门锁M87457 ...</a>
											</p>
											<p class="price">
												<span>
																								¥99.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(280)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_276">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/276_thumb_G_1456453511434.jpg" <img src="${ctx}/statics/images/276_thumb_G_1456453511434.jpg" alt="鸿雁 六位+三位 ZDP61G3T3/D 3m+ZDP31G3/D 1.5m" height="140" width="140" class="pic_img_276" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">鸿雁 六位+三位 ZDP61G3T3/D 3m+...</a>
											</p>
											<p class="price">
												<span>
																								¥39.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(276)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_277">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/277_thumb_G_1456453595148.jpg" <img src="${ctx}/statics/images/277_thumb_G_1456453595148.jpg" alt="西门子开关插座面板 悦动白墙壁一开双控带荧光面板" height="140" width="140" class="pic_img_277" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">西门子开关插座面板 悦动白墙壁一开双控带荧光面板</a>
											</p>
											<p class="price">
												<span>
																								¥16.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(277)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_278" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/278_thumb_G_1456453661817.jpg" <img src="${ctx}/statics/images/278_thumb_G_1456453661817.jpg" alt="西门子开关插座面板 悦动白墙壁二位双控带荧光开关" height="140" width="140" class="pic_img_278" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">西门子开关插座面板 悦动白墙壁二位双控带荧光开关</a>
											</p>
											<p class="price">
												<span>
																								¥21.6																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(278)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_279">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/279_thumb_G_1456453803305.jpg" <img src="${ctx}/statics/images/279_thumb_G_1456453803305.jpg" alt="固特 304不锈钢门吸 墙地吸 3408" height="140" width="140" class="pic_img_279" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">固特 304不锈钢门吸 墙地吸 3408</a>
											</p>
											<p class="price">
												<span>
																								¥28.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(279)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_281">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/281_thumb_G_1456453972506.jpg" <img src="${ctx}/statics/images/281_thumb_G_1456453972506.jpg" alt="卡贝 不锈钢户门吸15CM加长特长墙吸地碰门挡强磁现代家用五金 拉丝不锈钢" height="140" width="140" class="pic_img_281" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">卡贝 不锈钢户门吸15CM加长特长墙吸地碰门挡强...</a>
											</p>
											<p class="price">
												<span>
																								¥39.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(281)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_282">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/282_thumb_G_1456454106731.jpg" <img src="${ctx}/statics/images/282_thumb_G_1456454106731.jpg" alt="超B级锁芯防伪升级版 防盗门锁芯 防锡纸开门37.5+32.5=70mm" height="140" width="140" class="pic_img_282" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">超B级锁芯防伪升级版 防盗门锁芯 防锡纸开门37...</a>
											</p>
											<p class="price">
												<span>
																								¥129.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(282)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_283" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201603/thumb_img/_thumb_P_1457590880591.jpg" <img src="${ctx}/statics/images/_thumb_P_1457590880591.jpg" alt="好事达家用梯子四步梯加厚梯子折叠梯移动扶梯人字梯2766" height="140" width="140" class="pic_img_283" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">好事达家用梯子四步梯加厚梯子折叠梯移动扶梯人字梯...</a>
											</p>
											<p class="price">
												<span>
																								¥10.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(283)" title="加入购物车"></a>
										</div>
									</div>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_118">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/118_thumb_G_1437524872711.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Midea/美的 KFR-35GW/WPAA3 大1.5匹极速变频冷暖空调 稀土压缩机" height="140" width="140" class="pic_img_118">
												</a>
												<p class="title">
													<a target="_blank" href="#">Midea/美的 KFR-35GW/WPAA3 ...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥2245.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(118)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_122">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/122_thumb_G_1437525597541.jpg" <img src="${ctx}/statics/images/loading.gif" alt="二级大2P智能云定频冷暖柜机空调" height="140" width="140" class="pic_img_122">
												</a>
												<p class="title">
													<a target="_blank" href="#">二级大2P智能云定频冷暖柜机空调</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥2245.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(122)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_124">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/124_thumb_G_1437525834721.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Haier/海尔 BCD-252WDBD 252升 无霜风冷 冷藏冷冻家用三门冰箱" height="140" width="140" class="pic_img_124">
												</a>
												<p class="title">
													<a target="_blank" href="#">Haier/海尔 BCD-252WDBD 252...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥3245.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(124)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_126" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/126_thumb_G_1437525951501.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Midea/美的 MB60-VT1010H 全自动波轮洗衣机6公斤不锈钢 正品包邮" height="140" width="140" class="pic_img_126">
												</a>
												<p class="title">
													<a target="_blank" href="#">Midea/美的 MB60-VT1010H 全自...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥3245.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(126)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_128">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/128_thumb_G_1437526271316.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Gree/格力 KFR-72LW/(72596)FNAa-A3 变频3P立式柜机空调 Q铂" height="140" width="140" class="pic_img_128">
												</a>
												<p class="title">
													<a target="_blank" href="#">Gree/格力 KFR-72LW/(72596)...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥6400.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(128)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_121">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/121_thumb_G_1437525509791.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Midea/美的 KFR-26GW/WJBA3@ 大1匹智能云除甲醛除湿冷暖变频空调" height="140" width="140" class="pic_img_121">
												</a>
												<p class="title">
													<a target="_blank" href="#">Midea/美的 KFR-26GW/WJBA3@...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥2245.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(121)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_123">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/123_thumb_G_1437525706093.jpg" <img src="${ctx}/statics/images/loading.gif" alt="SIEMENS/西门子 BCD-610W(KA92NV03TI)双开家用对开门电冰箱无霜" height="140" width="140" class="pic_img_123">
												</a>
												<p class="title">
													<a target="_blank" href="#">SIEMENS/西门子 BCD-610W(KA9...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥5245.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(123)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_125" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/125_thumb_G_1437525897177.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Haier/海尔 XQG70-B12866电商/7公斤 全自动 变频滚筒 洗衣机" height="140" width="140" class="pic_img_125">
												</a>
												<p class="title">
													<a target="_blank" href="#">Haier/海尔 XQG70-B12866电商/...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥3245.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(125)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_93">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/93_thumb_G_1437523047489.jpg" <img src="${ctx}/statics/images/loading.gif" alt="家用高端直饮净水器WP4160厨房自来水前置过滤器智能净水机" height="140" width="140" class="pic_img_93">
												</a>
												<p class="title">
													<a target="_blank" href="#">家用高端直饮净水器WP4160厨房自来水前置过滤...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥599.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(93)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_94">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/94_thumb_G_1437523136659.jpg" <img src="${ctx}/statics/images/loading.gif" alt="电熨斗蒸汽家用 手持迷你电烫斗顺滑不粘底板 蒸汽熨斗家用" height="140" width="140" class="pic_img_94">
												</a>
												<p class="title">
													<a target="_blank" href="#">电熨斗蒸汽家用 手持迷你电烫斗顺滑不粘底板 蒸汽...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥99.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(94)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_85">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/85_thumb_G_1437522493859.jpg" <img src="${ctx}/statics/images/loading.gif" alt="美的空调扇单冷遥控制冷风扇冷风机家用净化静音冷气空调AC120-G" height="140" width="140" class="pic_img_85">
												</a>
												<p class="title">
													<a target="_blank" href="#">美的空调扇单冷遥控制冷风扇冷风机家用净化静音冷气...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥500.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(85)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_89" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/89_thumb_G_1437522853745.jpg" <img src="${ctx}/statics/images/loading.gif" alt="格力遥控落地扇 家用静音电风扇 7.5小时定时 办公室学生扇 电扇" height="140" width="140" class="pic_img_89">
												</a>
												<p class="title">
													<a target="_blank" href="#">格力遥控落地扇 家用静音电风扇 7.5小时定时 ...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥199.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(89)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_103">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/103_thumb_G_1437523455426.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Galanz/格兰仕 G90F25CN3L-C2(G2) 微波炉 光波炉 正品" height="140" width="140" class="pic_img_103">
												</a>
												<p class="title">
													<a target="_blank" href="#">Galanz/格兰仕 G90F25CN3L-C2...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥359.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(103)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_101">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/101_thumb_G_1437523379443.jpg" <img src="${ctx}/statics/images/loading.gif" alt="美的电磁炉Midea/美的 WK2102电磁炉特价家用触摸屏火锅电池炉灶" height="140" width="140" class="pic_img_101">
												</a>
												<p class="title">
													<a target="_blank" href="#">美的电磁炉Midea/美的 WK2102电磁炉特...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥159.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(101)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_97">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/97_thumb_G_1437523257758.jpg" <img src="${ctx}/statics/images/loading.gif" alt="除湿机家用抽湿机20B 地下室别墅吸湿器除湿器" height="140" width="140" class="pic_img_97">
												</a>
												<p class="title">
													<a target="_blank" href="#">除湿机家用抽湿机20B 地下室别墅吸湿器除湿器</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥259.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(97)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_91" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/91_thumb_G_1437522939065.jpg" <img src="${ctx}/statics/images/loading.gif" alt="海尔ZB401G 家用小型床铺除螨仪 床上除螨机吸尘器 紫外线杀菌" height="140" width="140" class="pic_img_91">
												</a>
												<p class="title">
													<a target="_blank" href="#">海尔ZB401G 家用小型床铺除螨仪 床上除螨机...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥399.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(91)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_127">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/127_thumb_G_1437526071198.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Midea/美的 MK-HJ1501电热水壶不锈钢烧水壶保温自动断电进口温控" height="140" width="140" class="pic_img_127">
												</a>
												<p class="title">
													<a target="_blank" href="#">Midea/美的 MK-HJ1501电热水壶不锈...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥245.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(127)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_110">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/110_thumb_G_1437523812526.jpg" <img src="${ctx}/statics/images/loading.gif" alt="养生壶玻璃加厚分体保温电煎药壶全自动花茶壶隔水炖正品" height="140" width="140" class="pic_img_110">
												</a>
												<p class="title">
													<a target="_blank" href="#">养生壶玻璃加厚分体保温电煎药壶全自动花茶壶隔水炖...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥336.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(110)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_114">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/114_thumb_G_1437524086723.jpg" <img src="${ctx}/statics/images/loading.gif" alt="米酒机酸奶机全自动家用不锈钢正品包邮" height="140" width="140" class="pic_img_114">
												</a>
												<p class="title">
													<a target="_blank" href="#">米酒机酸奶机全自动家用不锈钢正品包邮</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥89.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(114)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_116" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/116_thumb_G_1437524258255.jpg" <img src="${ctx}/statics/images/loading.gif" alt="电炖锅砂锅炖盅煮粥煲汤养生紫砂陶瓷" height="140" width="140" class="pic_img_116">
												</a>
												<p class="title">
													<a target="_blank" href="#">电炖锅砂锅炖盅煮粥煲汤养生紫砂陶瓷</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥254.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(116)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_115">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/115_thumb_G_1437524170488.jpg" <img src="${ctx}/statics/images/loading.gif" alt="酸奶机家用全自动8个陶瓷分杯正品特价" height="140" width="140" class="pic_img_115">
												</a>
												<p class="title">
													<a target="_blank" href="#">酸奶机家用全自动8个陶瓷分杯正品特价</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥59.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(115)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_117">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/117_thumb_G_1437524390888.jpg" <img src="${ctx}/statics/images/loading.gif" alt=" CKTF-32GS上下独立控温 多功能电烤箱家用烘焙烤箱 正品特价" height="140" width="140" class="pic_img_117">
												</a>
												<p class="title">
													<a target="_blank" href="#">CKTF-32GS上下独立控温 多功能电烤箱家用...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥254.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(117)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_112">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/112_thumb_G_1437524004579.jpg" <img src="${ctx}/statics/images/loading.gif" alt="电饼铛 美的 JCN30A蛋糕机 正品悬浮双面加热 家用煎烤机烙饼锅" height="140" width="140" class="pic_img_112">
												</a>
												<p class="title">
													<a target="_blank" href="#">电饼铛 美的 JCN30A蛋糕机 正品悬浮双面加...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥234.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(112)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_106" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/106_thumb_G_1437523569985.jpg" <img src="${ctx}/statics/images/loading.gif" alt=" JYL-D022料理机家用多功能榨汁辅食搅拌机电动绞肉" height="140" width="140" class="pic_img_106">
												</a>
												<p class="title">
													<a target="_blank" href="#">JYL-D022料理机家用多功能榨汁辅食搅拌机电...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥236.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(106)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>
							</div>
						</div>
						<div class="floor-brand">
							<div class="tabs-brand">
								<div class="brand">
									<div class="brand-con">
										<ul class="yyyy_5" style="position: absolute; width: 1071px; height: 40px; top: 0px; left: 1px;">
											<li class="fore1">
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437433795060834486.jpg" data-original="data/brandlogo/1437433795060834486.jpg" alt="格力" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437433779804083933.jpg" data-original="data/brandlogo/1437433779804083933.jpg" alt="美的" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437430374768843113.jpg" data-original="data/brandlogo/1437430374768843113.jpg" alt="LG" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437433767280039957.jpg" data-original="data/brandlogo/1437433767280039957.jpg" alt="海尔" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437434172223731860.jpg" data-original="data/brandlogo/1437434172223731860.jpg" alt="伊莱克斯" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437433823734794032.gif" data-original="data/brandlogo/1437433823734794032.gif" alt="西门子" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437430441802693617.png" data-original="data/brandlogo/1437430441802693617.png" alt="三星" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437433840630073088.jpg" data-original="data/brandlogo/1437433840630073088.jpg" alt="格兰仕" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/loading.gif" data-original="data/brandlogo/" alt="Phshop">
												</a>
											</li>
										</ul>
										<div class="brand-btn">
											<a class="brand-left right_5" href="#">&lt;</a>
											<a class="brand-right left_5" href="#">&gt;</a>
										</div>
									</div>
								</div>
								<script type="text/javascript">
									Move(".left_5", ".right_5", ".yyyy_5", ".brand", "10");
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="floor" floor="2" color="#e31939">
				<div class="floor-layout">
					<a href="#">
						<img src="${ctx}/statics/images/1437500501794038732.jpg" alt="" height="100" width="1210">
					</a>
					<div class="floor-con">
						<div class="floor-title">
							<h2>
						<span> 2F </span>
						<a href="#">手机、数码、通信</a>
					</h2>
							<ul class="floor-tabs-nav">
								<li class="floor-tabs-selected">
									<h3 style="border-color: #e31939 #e31939 #fff; color: #e31939;">精挑细选</h3>
								</li>
								<li class="">
									<h3>热卖手机</h3>
								</li>
								<li class="">
									<h3>手机配件</h3>
								</li>
								<li class="">
									<h3>数码影音</h3>
								</li>
							</ul>
						</div>
						<script type="text/javascript">
							$(function() {
								var sWidth = $("#focus_4").width(); //获取焦点图的宽度（显示面积）
								var len = $("#focus_4 ul li").length; //获取焦点图个数
								var index = 0;
								var picTimer;
								//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
								var btn = "<div class='btn'>";

								for(var i = 0; i < len; i++) {
									btn += "<span></span>";
								}
								btn += "</div>";
								$("#focus_4").append(btn);
								$("#focus_4 .btnBg").css("opacity", 0.5);

								//为小按钮添加鼠标滑入事件，以显示相应的内容
								$("#focus_4 .btn span").css("opacity", 0.3).mouseover(function() {
									index = $("#focus_4 .btn span").index(this);
									showPics(index);
								}).eq(0).trigger("mouseover");

								//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
								$("#focus_4 ul").css("width", sWidth * (len));

								//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
								$("#focus_4").hover(function() {
									clearInterval(picTimer);
								}, function() {
									picTimer = setInterval(function() {
										showPics(index);
										index++;
										if(index == len) {
											index = 0;
										}
									}, 3000); //此4000代表自动播放的间隔，单位：毫秒
								}).trigger("mouseleave");

								//显示图片函数，根据接收的index值显示相应的内容
								function showPics(index) { //普通切换
									var nowLeft = -index * sWidth; //根据index值计算ul元素的left值
									$("#focus_4 ul").stop(true, false).animate({
										"left": nowLeft
									}, 300);
									$("#focus_4 .btn span").stop(true, false).animate({
										"opacity": "0.3"
									}, 300).eq(index).stop(true, false).animate({
										"opacity": "0.7"
									}, 300); //为当前的按钮切换到选中的效果
								}
							});
						</script>
						<div class="floor-content">
							<div class="floor-left" style="border-top: 1px #e31939 solid;">
								<div id="focus_4" class="floor-banner">
									<ul style="left: -540px; width: 810px;">
										<li>
											<a href="#"><img data-original="data/afficheimg/1453713207872796743.jpg" <img src="${ctx}/statics/images/1453713207872796743.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453770103883821995.jpg" <img src="${ctx}/statics/images/1453770103883821995.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453770119838471883.jpg" <img src="${ctx}/statics/images/1453770119838471883.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
									</ul>
									<div class="btn"><span style="opacity: 0.3;"></span><span style="opacity: 0.3;"></span><span style="opacity: 0.7;"></span></div>
								</div>

								<ul class="floor-words">
									<li>
										<a href="#">
											iPhone </a>
									</li>
									<li>
										<a href="#">
											联通4G </a>
									</li>
									<li>
										<a href="#">
											电信4G </a>
									</li>
									<li>
										<a href="#">
											电池 </a>
									</li>
									<li>
										<a href="#">
											智能手环 </a>
									</li>
									<li>
										<a href="#">
											智能手表 </a>
									</li>
									<li>
										<a href="#">
											智能眼镜 </a>
									</li>
									<li>
										<a href="#">
											智能家居 </a>
									</li>
								</ul>
							</div>
							<div class="floor-right">

								<div class="floor-tabs-panel" style="border-top: 1px #e31939 solid;">
									<div class="goods" id="li_200">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/200_thumb_G_1437534571298.jpg" <img src="${ctx}/statics/images/200_thumb_G_1437534571298.jpg" alt="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金" height="140" width="140" class="pic_img_200" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">爱度AY800蓝牙音箱手机电脑迷你音响无线便携插...</a>
											</p>
											<p class="price">
												<span>
																								¥98.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(200)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_191">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/191_thumb_G_1437533027069.jpg" <img src="${ctx}/statics/images/191_thumb_G_1437533027069.jpg" alt="雪奈儿 金属边框手机壳套保护壳新款 适用于苹果iPhone6/Plus 4.7英寸 利剑i6土豪金5.5" height="140" width="140" class="pic_img_191" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">雪奈儿 金属边框手机壳套保护壳新款 适用于苹果i...</a>
											</p>
											<p class="price">
												<span>
																								¥78.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(191)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_197">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/197_thumb_G_1437534106244.jpg" <img src="${ctx}/statics/images/197_thumb_G_1437534106244.jpg" alt="一丁（EADING） EA-CZB 一丁魔盒超级智能插座 手机APP控制 B款" height="140" width="140" class="pic_img_197" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">一丁（EADING） EA-CZB 一丁魔盒超级...</a>
											</p>
											<p class="price">
												<span>
																								¥99.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(197)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_198" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/198_thumb_G_1437534190926.jpg" <img src="${ctx}/statics/images/198_thumb_G_1437534190926.jpg" alt="MATE 智能蓝牙手表手机电话蓝牙手表带MP3能打电话适用于苹果三星电信华为小米 土豪金" height="140" width="140" class="pic_img_198" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">MATE 智能蓝牙手表手机电话蓝牙手表带MP3能...</a>
											</p>
											<p class="price">
												<span>
																								¥398.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(198)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_205">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/205_thumb_G_1437535334565.jpg" <img src="${ctx}/statics/images/205_thumb_G_1437535334565.jpg" alt="索爱（soaiy）S-20 便携式蓝牙数码插卡智能音箱 青春版 珍珠白" height="140" width="140" class="pic_img_205" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">索爱（soaiy）S-20 便携式蓝牙数码插卡智...</a>
											</p>
											<p class="price">
												<span>
																								¥299.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(205)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_201">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/201_thumb_G_1437534649147.jpg" <img src="${ctx}/statics/images/201_thumb_G_1437534649147.jpg" alt="X-Vibe3.0 酷丸第三代共振音箱 智能互动音响 创意迷你胶囊便携式共振音响 黑+橙线 现货" height="140" width="140" class="pic_img_201" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">X-Vibe3.0 酷丸第三代共振音箱 智能互动...</a>
											</p>
											<p class="price">
												<span>
																								¥98.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(201)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_206">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/206_thumb_G_1437535425884.jpg" <img src="${ctx}/statics/images/206_thumb_G_1437535425884.jpg" alt="洛斐（Lofree）创意无线蓝牙音箱音响 电脑音箱 EDGE锋芒3C建筑美学" height="140" width="140" class="pic_img_206" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">洛斐（Lofree）创意无线蓝牙音箱音响 电脑音...</a>
											</p>
											<p class="price">
												<span>
																								¥249.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(206)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_207" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/207_thumb_G_1437535941165.jpg" <img src="${ctx}/statics/images/207_thumb_G_1437535941165.jpg" alt="三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机" height="140" width="140" class="pic_img_207" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">三星 Galaxy S6 edge（G9250）...</a>
											</p>
											<p class="price">
												<span>
																								¥6088.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(207)" title="加入购物车"></a>
										</div>
									</div>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_100">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/100_thumb_G_1437523484060.jpg" <img src="${ctx}/statics/images/loading.gif" alt="苹果（Apple）iPhone 6 (A1586) 16GB 金色 移动联通电信4G手机" height="140" width="140" class="pic_img_100">
												</a>
												<p class="title">
													<a target="_blank" href="#">苹果（Apple）iPhone 6 (A1586...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥4888.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(100)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_143">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/143_thumb_G_1437529603664.jpg" <img src="${ctx}/statics/images/loading.gif" alt="小米（MI）小米Note 移动联通双4G 特别版(16G ROM)" height="140" width="140" class="pic_img_143">
												</a>
												<p class="title">
													<a target="_blank" href="#">小米（MI）小米Note 移动联通双4G 特别版...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥2098.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(143)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_155">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/155_thumb_G_1437530585448.jpg" <img src="${ctx}/statics/images/loading.gif" alt="三星 Galaxy S6 edge（G9250）32G版 铂光金 移动联通电信4G手机" height="140" width="140" class="pic_img_155">
												</a>
												<p class="title">
													<a target="_blank" href="#">三星 Galaxy S6 edge（G9250）...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥6088.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(155)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_168" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/168_thumb_G_1437531325629.jpg" <img src="${ctx}/statics/images/loading.gif" alt="朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移动4G手机" height="140" width="140" class="pic_img_168">
												</a>
												<p class="title">
													<a target="_blank" href="#">朵唯 懂小姐美颜自拍女性机 (C9) 薄荷绿 移...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥899.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(168)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_147">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/147_thumb_G_1437530142553.jpg" <img src="${ctx}/statics/images/loading.gif" alt="【套装版】荣耀 6 Plus (PE-TL20) 3GB内存标准版 白色 移动4G手机 双卡双待双通" height="140" width="140" class="pic_img_147">
												</a>
												<p class="title">
													<a target="_blank" href="#">【套装版】荣耀 6 Plus (PE-TL20)...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥2199.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(147)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_175">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/175_thumb_G_1437531671882.jpg" <img src="${ctx}/statics/images/loading.gif" alt="摩托罗拉 moto x pro(XT1115) 64GB 雅典黑 移动联通电信4G手机" height="140" width="140" class="pic_img_175">
												</a>
												<p class="title">
													<a target="_blank" href="#">摩托罗拉 moto x pro(XT1115) ...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥9699.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(175)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_162">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/162_thumb_G_1437530928053.jpg" <img src="${ctx}/statics/images/loading.gif" alt="HTC One M9w 联通4G手机 乌金灰" height="140" width="140" class="pic_img_162">
												</a>
												<p class="title">
													<a target="_blank" href="#">HTC One M9w 联通4G手机 乌金灰</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥3837.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(162)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_113" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/113_thumb_G_1437524324289.jpg" <img src="${ctx}/statics/images/loading.gif" alt="苹果（Apple）iPhone 6 Plus (A1524) 16GB 金色 移动联通电信4G手机" height="140" width="140" class="pic_img_113">
												</a>
												<p class="title">
													<a target="_blank" href="#">苹果（Apple）iPhone 6 Plus (...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥5688.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(113)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_191">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/191_thumb_G_1437533027069.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雪奈儿 金属边框手机壳套保护壳新款 适用于苹果iPhone6/Plus 4.7英寸 利剑i6土豪金5.5" height="140" width="140" class="pic_img_191">
												</a>
												<p class="title">
													<a target="_blank" href="#">雪奈儿 金属边框手机壳套保护壳新款 适用于苹果i...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥78.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(191)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_197">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/197_thumb_G_1437534106244.jpg" <img src="${ctx}/statics/images/loading.gif" alt="一丁（EADING） EA-CZB 一丁魔盒超级智能插座 手机APP控制 B款" height="140" width="140" class="pic_img_197">
												</a>
												<p class="title">
													<a target="_blank" href="#">一丁（EADING） EA-CZB 一丁魔盒超级...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥99.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(197)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_198">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/198_thumb_G_1437534190926.jpg" <img src="${ctx}/statics/images/loading.gif" alt="MATE 智能蓝牙手表手机电话蓝牙手表带MP3能打电话适用于苹果三星电信华为小米 土豪金" height="140" width="140" class="pic_img_198">
												</a>
												<p class="title">
													<a target="_blank" href="#">MATE 智能蓝牙手表手机电话蓝牙手表带MP3能...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥398.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(198)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_179" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/179_thumb_G_1437532294511.jpg" <img src="${ctx}/statics/images/loading.gif" alt="哈马 韩国 单手操作器 魔力贴 U形手机支架创意可爱懒人支架 单个绿色" height="140" width="140" class="pic_img_179">
												</a>
												<p class="title">
													<a target="_blank" href="#">哈马 韩国 单手操作器 魔力贴 U形手机支架创意...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥3.9																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(179)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_185">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/185_thumb_G_1437532813329.jpg" <img src="${ctx}/statics/images/loading.gif" alt="赛鲸 常青藤懒人手机支架 床上床头支架 万向调节 太空蓝" height="140" width="140" class="pic_img_185">
												</a>
												<p class="title">
													<a target="_blank" href="#">赛鲸 常青藤懒人手机支架 床上床头支架 万向调节...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥29.9																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(185)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_188">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/188_thumb_G_1437532927406.jpg" <img src="${ctx}/statics/images/loading.gif" alt="SENBOWE 安卓系统遥控摄像视频间谍汽车玩具 白色" height="140" width="140" class="pic_img_188">
												</a>
												<p class="title">
													<a target="_blank" href="#">SENBOWE 安卓系统遥控摄像视频间谍汽车玩具...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥348.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(188)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_192">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/192_thumb_G_1437533248578.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Genuinetek 手机信号放大器DS2H_A手机信号增强器移动联通接收器全套装" height="140" width="140" class="pic_img_192">
												</a>
												<p class="title">
													<a target="_blank" href="#">Genuinetek 手机信号放大器DS2H_A...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥248.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(192)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_183" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/183_thumb_G_1437532716802.jpg" <img src="${ctx}/statics/images/loading.gif" alt="幻响（i-mu）百变羊 创意指环扣 手机支架 双指环 360度旋转 防止手机滑落 金属材质 强力粘胶" height="140" width="140" class="pic_img_183">
												</a>
												<p class="title">
													<a target="_blank" href="#">幻响（i-mu）百变羊 创意指环扣 手机支架 双...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥19.9																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(183)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_200">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/200_thumb_G_1437534571298.jpg" <img src="${ctx}/statics/images/loading.gif" alt="爱度AY800蓝牙音箱手机电脑迷你音响无线便携插卡低音炮 带蓝牙自拍 土豪金" height="140" width="140" class="pic_img_200">
												</a>
												<p class="title">
													<a target="_blank" href="#">爱度AY800蓝牙音箱手机电脑迷你音响无线便携插...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥98.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(200)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_205">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/205_thumb_G_1437535334565.jpg" <img src="${ctx}/statics/images/loading.gif" alt="索爱（soaiy）S-20 便携式蓝牙数码插卡智能音箱 青春版 珍珠白" height="140" width="140" class="pic_img_205">
												</a>
												<p class="title">
													<a target="_blank" href="#">索爱（soaiy）S-20 便携式蓝牙数码插卡智...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥299.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(205)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_201">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/201_thumb_G_1437534649147.jpg" <img src="${ctx}/statics/images/loading.gif" alt="X-Vibe3.0 酷丸第三代共振音箱 智能互动音响 创意迷你胶囊便携式共振音响 黑+橙线 现货" height="140" width="140" class="pic_img_201">
												</a>
												<p class="title">
													<a target="_blank" href="#">X-Vibe3.0 酷丸第三代共振音箱 智能互动...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥98.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(201)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_206" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/206_thumb_G_1437535425884.jpg" <img src="${ctx}/statics/images/loading.gif" alt="洛斐（Lofree）创意无线蓝牙音箱音响 电脑音箱 EDGE锋芒3C建筑美学" height="140" width="140" class="pic_img_206">
												</a>
												<p class="title">
													<a target="_blank" href="#">洛斐（Lofree）创意无线蓝牙音箱音响 电脑音...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥249.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(206)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_199">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/199_thumb_G_1437534382441.jpg" <img src="${ctx}/statics/images/loading.gif" alt="爱度ay819无线蓝牙音箱便携迷你小音响插卡u盘低音炮电脑笔记本音箱 白色" height="140" width="140" class="pic_img_199">
												</a>
												<p class="title">
													<a target="_blank" href="#">爱度ay819无线蓝牙音箱便携迷你小音响插卡u盘...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥148.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(199)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_204">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/204_thumb_G_1437535259030.jpg" <img src="${ctx}/statics/images/loading.gif" alt="安索夫太空人迷你可爱个性发光手机电脑音箱USB低音炮便携笔记本小音响 暑期大促 白色" height="140" width="140" class="pic_img_204">
												</a>
												<p class="title">
													<a target="_blank" href="#">安索夫太空人迷你可爱个性发光手机电脑音箱USB低...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥29.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(204)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_202">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/202_thumb_G_1437534795824.jpg" <img src="${ctx}/statics/images/loading.gif" alt="安索夫迷你电脑USB2.0小音箱可爱熊猫便携笔记本台式电脑音箱 音响" height="140" width="140" class="pic_img_202">
												</a>
												<p class="title">
													<a target="_blank" href="#">安索夫迷你电脑USB2.0小音箱可爱熊猫便携笔记...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥29.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(202)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_203" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/203_thumb_G_1437534951257.jpg" <img src="${ctx}/statics/images/loading.gif" alt="PowerCube魔方插座接线板 创意多功能荷兰Allocacoc模方插座 办公神器 USB款/无延长线直插(蓝)" height="140" width="140" class="pic_img_203">
												</a>
												<p class="title">
													<a target="_blank" href="#">PowerCube魔方插座接线板 创意多功能荷兰...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥49.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(203)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>
							</div>
						</div>
						<div class="floor-brand">
							<div class="tabs-brand">
								<div class="brand">
									<div class="brand-con">
										<ul class="yyyy_4" style="position: absolute; width: 1666px; height: 40px; top: 0px; left: 1px;">
											<li class="fore1">
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437430574094435270.png" data-original="data/brandlogo/1437430574094435270.png" alt="努比亚" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437434684850488373.jpg" data-original="data/brandlogo/1437434684850488373.jpg" alt="溢彩年华" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437430433744102612.jpg" data-original="data/brandlogo/1437430433744102612.jpg" alt="苹果" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437430325761583576.jpg" data-original="data/brandlogo/1437430325761583576.jpg" alt="htc" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437430298555384602.jpg" data-original="data/brandlogo/1437430298555384602.jpg" alt="中兴" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437434180841305731.jpg" data-original="data/brandlogo/1437434180841305731.jpg" alt="艾力斯特" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437433854063455383.jpg" data-original="data/brandlogo/1437433854063455383.jpg" alt="海信" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437434172223731860.jpg" data-original="data/brandlogo/1437434172223731860.jpg" alt="伊莱克斯" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437430441802693617.png" data-original="data/brandlogo/1437430441802693617.png" alt="三星" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437430460743432443.jpg" data-original="data/brandlogo/1437430460743432443.jpg" alt="乐檬" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437428980225446797.jpg" data-original="data/brandlogo/1437428980225446797.jpg" alt="Dior" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437430344637755359.jpg" data-original="data/brandlogo/1437430344637755359.jpg" alt="华为" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437430289405669696.jpg" data-original="data/brandlogo/1437430289405669696.jpg" alt="摩托罗拉" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437433823734794032.gif" data-original="data/brandlogo/1437433823734794032.gif" alt="西门子" style="display: inline;">
												</a>
											</li>
										</ul>
										<div class="brand-btn">
											<a class="brand-left right_4" href="#">&lt;</a>
											<a class="brand-right left_4" href="#">&gt;</a>
										</div>
									</div>
								</div>
								<script type="text/javascript">
									Move(".left_4", ".right_4", ".yyyy_4", ".brand", "10");
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="floor" floor="3" color="#e31939">
				<div class="floor-layout">
					<div class="floor-con">
						<div class="floor-title">
							<h2>
						<span> 3F </span>
						<a href="#">家居、家具、家装、厨具</a>
					</h2>
							<ul class="floor-tabs-nav">
								<li class="floor-tabs-selected">
									<h3 style="border-color: #e31939 #e31939 #fff; color: #e31939;">精挑细选</h3>
								</li>
								<li class="">
									<h3>家纺</h3>
								</li>
								<li class="">
									<h3>家具</h3>
								</li>
								<li class="">
									<h3>厨具</h3>
								</li>
							</ul>
						</div>
						<script type="text/javascript">
							$(function() {
								var sWidth = $("#focus_6").width(); //获取焦点图的宽度（显示面积）
								var len = $("#focus_6 ul li").length; //获取焦点图个数
								var index = 0;
								var picTimer;
								//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
								var btn = "<div class='btn'>";

								for(var i = 0; i < len; i++) {
									btn += "<span></span>";
								}
								btn += "</div>";
								$("#focus_6").append(btn);
								$("#focus_6 .btnBg").css("opacity", 0.5);

								//为小按钮添加鼠标滑入事件，以显示相应的内容
								$("#focus_6 .btn span").css("opacity", 0.3).mouseover(function() {
									index = $("#focus_6 .btn span").index(this);
									showPics(index);
								}).eq(0).trigger("mouseover");

								//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
								$("#focus_6 ul").css("width", sWidth * (len));

								//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
								$("#focus_6").hover(function() {
									clearInterval(picTimer);
								}, function() {
									picTimer = setInterval(function() {
										showPics(index);
										index++;
										if(index == len) {
											index = 0;
										}
									}, 3000); //此4000代表自动播放的间隔，单位：毫秒
								}).trigger("mouseleave");

								//显示图片函数，根据接收的index值显示相应的内容
								function showPics(index) { //普通切换
									var nowLeft = -index * sWidth; //根据index值计算ul元素的left值
									$("#focus_6 ul").stop(true, false).animate({
										"left": nowLeft
									}, 300);
									$("#focus_6 .btn span").stop(true, false).animate({
										"opacity": "0.3"
									}, 300).eq(index).stop(true, false).animate({
										"opacity": "0.7"
									}, 300); //为当前的按钮切换到选中的效果
								}
							});
						</script>
						<div class="floor-content">
							<div class="floor-left" style="border-top: 1px #e31939 solid;">
								<div id="focus_6" class="floor-banner">
									<ul style="left: -540px; width: 810px;">
										<li>
											<a href="#"><img data-original="data/afficheimg/1453713152385501252.jpg" <img src="${ctx}/statics/images/1453713152385501252.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453769608209956096.jpg" <img src="${ctx}/statics/images/1453769608209956096.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453769791381361191.jpg" <img src="${ctx}/statics/images/1453769791381361191.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
									</ul>
									<div class="btn"><span style="opacity: 0.3;"></span><span style="opacity: 0.3;"></span><span style="opacity: 0.7;"></span></div>
								</div>

								<ul class="floor-words">
									<li>
										<a href="#">
											床品套件 </a>
									</li>
									<li>
										<a href="#">
											被子 </a>
									</li>
									<li>
										<a href="#">
											餐具 </a>
									</li>
									<li>
										<a href="#">
											LED灯 </a>
									</li>
									<li>
										<a href="#">
											装饰灯 </a>
									</li>
									<li>
										<a href="#">
											收纳用品 </a>
									</li>
									<li>
										<a href="#">
											雨伞雨具 </a>
									</li>
									<li>
										<a href="#">
											浴室用品 </a>
									</li>
								</ul>
							</div>
							<div class="floor-right">

								<div class="floor-tabs-panel" style="border-top: 1px #e31939 solid;">
									<div class="goods" id="li_231">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/231_thumb_G_1437587773545.jpg" <img src="${ctx}/statics/images/231_thumb_G_1437587773545.jpg" alt="可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套" height="140" width="140" class="pic_img_231" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套</a>
											</p>
											<p class="price">
												<span>
																								¥99.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(231)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_225">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/225_thumb_G_1437587108986.jpg" <img src="${ctx}/statics/images/225_thumb_G_1437587108986.jpg" alt="樱之歌 52头 紫玉情缘 餐具套装" height="140" width="140" class="pic_img_225" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">樱之歌 52头 紫玉情缘 餐具套装</a>
											</p>
											<p class="price">
												<span>
																								¥239.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(225)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_232">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/_thumb_P_1438047501681.jpg" <img src="${ctx}/statics/images/_thumb_P_1438047501681.jpg" alt="包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松" height="140" width="140" class="pic_img_232" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特...</a>
											</p>
											<p class="price">
												<span>
																								¥274.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(232)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_226" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/226_thumb_G_1437587179362.jpg" <img src="${ctx}/statics/images/226_thumb_G_1437587179362.jpg" alt="亿嘉IJARL 时尚陶瓷28头韩式骨瓷餐具套装 东洋之心" height="140" width="140" class="pic_img_226" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">亿嘉IJARL 时尚陶瓷28头韩式骨瓷餐具套装 ...</a>
											</p>
											<p class="price">
												<span>
																								¥239.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(226)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_228">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/228_thumb_G_1437587380356.jpg" <img src="${ctx}/statics/images/228_thumb_G_1437587380356.jpg" alt="剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56" height="140" width="140" class="pic_img_228" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 F...</a>
											</p>
											<p class="price">
												<span>
																								¥299.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(228)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_230">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/230_thumb_G_1437587680625.jpg" <img src="${ctx}/statics/images/230_thumb_G_1437587680625.jpg" alt="304不锈钢宝宝分格餐盘 儿童餐具分隔格碗餐盘婴儿盘" height="140" width="140" class="pic_img_230" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">304不锈钢宝宝分格餐盘 儿童餐具分隔格碗餐盘婴...</a>
											</p>
											<p class="price">
												<span>
																								¥35.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(230)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_224">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/224_thumb_G_1437586899394.jpg" <img src="${ctx}/statics/images/224_thumb_G_1437586899394.jpg" alt="中派 进口芬兰松木家具实木儿童高低床子母床上下铺带梯柜双层床" height="140" width="140" class="pic_img_224" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">中派 进口芬兰松木家具实木儿童高低床子母床上下铺...</a>
											</p>
											<p class="price">
												<span>
																								¥4600.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(224)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_223" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/223_thumb_G_1437586798114.jpg" <img src="${ctx}/statics/images/223_thumb_G_1437586798114.jpg" alt="乐和居 双人床 床 榻榻米床 头层真皮" height="140" width="140" class="pic_img_223" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">乐和居 双人床 床 榻榻米床 头层真皮</a>
											</p>
											<p class="price">
												<span>
																								¥2999.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(223)" title="加入购物车"></a>
										</div>
									</div>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_139">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/139_thumb_G_1437528892306.jpg" <img src="${ctx}/statics/images/loading.gif" alt="优雅100 经典设计款全棉斜纹印花四件套" height="140" width="140" class="pic_img_139">
												</a>
												<p class="title">
													<a target="_blank" href="#">优雅100 经典设计款全棉斜纹印花四件套</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥189.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(139)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_137">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/137_thumb_G_1437528855059.jpg" <img src="${ctx}/statics/images/loading.gif" alt="LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基" height="140" width="140" class="pic_img_137">
												</a>
												<p class="title">
													<a target="_blank" href="#">LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥399.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(137)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_140">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/140_thumb_G_1437528915082.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米床" height="140" width="140" class="pic_img_140">
												</a>
												<p class="title">
													<a target="_blank" href="#">雅鹿全棉四件套纯棉套件床上用品 回忆蓝 1.8米...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥333.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(140)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_119" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/119_thumb_G_1437525155564.jpg" <img src="${ctx}/statics/images/loading.gif" alt="艾生活 真皮床双人床 独特围边 精细做工 卧室家具" height="140" width="140" class="pic_img_119">
												</a>
												<p class="title">
													<a target="_blank" href="#">艾生活 真皮床双人床 独特围边 精细做工 卧室家...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥3260.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(119)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_120">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/120_thumb_G_1437525234301.jpg" <img src="${ctx}/statics/images/loading.gif" alt="柏年好禾 家具 欧式床 真皮实木床 法式田园公主床" height="140" width="140" class="pic_img_120">
												</a>
												<p class="title">
													<a target="_blank" href="#">柏年好禾 家具 欧式床 真皮实木床 法式田园公主...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥2098.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(120)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_129">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/129_thumb_G_1437527006289.jpg" <img src="${ctx}/statics/images/loading.gif" alt="铂尼诗 家具 床 皮床 卧室家具套装" height="140" width="140" class="pic_img_129">
												</a>
												<p class="title">
													<a target="_blank" href="#">铂尼诗 家具 床 皮床 卧室家具套装</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥3388.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(129)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_130">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/130_thumb_G_1437527119516.jpg" <img src="${ctx}/statics/images/loading.gif" alt="全是美 小户型梳妆台 欧式梳妆台 现代 简约" height="140" width="140" class="pic_img_130">
												</a>
												<p class="title">
													<a target="_blank" href="#">全是美 小户型梳妆台 欧式梳妆台 现代 简约</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥888.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(130)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_131" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/131_thumb_G_1437527214145.jpg" <img src="${ctx}/statics/images/loading.gif" alt="摩登生活 法式梳妆台欧式梳妆台实木梳妆台" height="140" width="140" class="pic_img_131">
												</a>
												<p class="title">
													<a target="_blank" href="#">摩登生活 法式梳妆台欧式梳妆台实木梳妆台</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥1233.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(131)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_137">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/137_thumb_G_1437528855059.jpg" <img src="${ctx}/statics/images/loading.gif" alt="LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔斯基" height="140" width="140" class="pic_img_137">
												</a>
												<p class="title">
													<a target="_blank" href="#">LOVO 罗莱家纺出品全棉斜纹床品套件四件套 兔...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥399.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(137)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_224">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/224_thumb_G_1437586899394.jpg" <img src="${ctx}/statics/images/loading.gif" alt="中派 进口芬兰松木家具实木儿童高低床子母床上下铺带梯柜双层床" height="140" width="140" class="pic_img_224">
												</a>
												<p class="title">
													<a target="_blank" href="#">中派 进口芬兰松木家具实木儿童高低床子母床上下铺...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥4600.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(224)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_223">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/223_thumb_G_1437586798114.jpg" <img src="${ctx}/statics/images/loading.gif" alt="乐和居 双人床 床 榻榻米床 头层真皮" height="140" width="140" class="pic_img_223">
												</a>
												<p class="title">
													<a target="_blank" href="#">乐和居 双人床 床 榻榻米床 头层真皮</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥2999.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(223)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_119" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/119_thumb_G_1437525155564.jpg" <img src="${ctx}/statics/images/loading.gif" alt="艾生活 真皮床双人床 独特围边 精细做工 卧室家具" height="140" width="140" class="pic_img_119">
												</a>
												<p class="title">
													<a target="_blank" href="#">艾生活 真皮床双人床 独特围边 精细做工 卧室家...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥3260.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(119)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_120">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/120_thumb_G_1437525234301.jpg" <img src="${ctx}/statics/images/loading.gif" alt="柏年好禾 家具 欧式床 真皮实木床 法式田园公主床" height="140" width="140" class="pic_img_120">
												</a>
												<p class="title">
													<a target="_blank" href="#">柏年好禾 家具 欧式床 真皮实木床 法式田园公主...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥2098.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(120)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_130">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/130_thumb_G_1437527119516.jpg" <img src="${ctx}/statics/images/loading.gif" alt="全是美 小户型梳妆台 欧式梳妆台 现代 简约" height="140" width="140" class="pic_img_130">
												</a>
												<p class="title">
													<a target="_blank" href="#">全是美 小户型梳妆台 欧式梳妆台 现代 简约</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥888.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(130)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_131">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/131_thumb_G_1437527214145.jpg" <img src="${ctx}/statics/images/loading.gif" alt="摩登生活 法式梳妆台欧式梳妆台实木梳妆台" height="140" width="140" class="pic_img_131">
												</a>
												<p class="title">
													<a target="_blank" href="#">摩登生活 法式梳妆台欧式梳妆台实木梳妆台</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥1233.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(131)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_222" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/222_thumb_G_1437586485852.jpg" <img src="${ctx}/statics/images/loading.gif" alt="美姿蓝 家具 床 皮床 皮艺床 双人床 真皮床" height="140" width="140" class="pic_img_222">
												</a>
												<p class="title">
													<a target="_blank" href="#">美姿蓝 家具 床 皮床 皮艺床 双人床 真皮床</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥1390.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(222)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_229">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/229_thumb_G_1437587547996.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Jaka蝴蝶夫人浮雕陶瓷分层水果盘 点心盘子 双层三层 多款可选" height="140" width="140" class="pic_img_229">
												</a>
												<p class="title">
													<a target="_blank" href="#">Jaka蝴蝶夫人浮雕陶瓷分层水果盘 点心盘子 双...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥116.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(229)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_231">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/231_thumb_G_1437587773545.jpg" <img src="${ctx}/statics/images/loading.gif" alt="可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套" height="140" width="140" class="pic_img_231">
												</a>
												<p class="title">
													<a target="_blank" href="#">可爱卡通餐盘水果盘点心盘 盘子儿童托盘餐具6件套</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥99.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(231)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_225">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/225_thumb_G_1437587108986.jpg" <img src="${ctx}/statics/images/loading.gif" alt="樱之歌 52头 紫玉情缘 餐具套装" height="140" width="140" class="pic_img_225">
												</a>
												<p class="title">
													<a target="_blank" href="#">樱之歌 52头 紫玉情缘 餐具套装</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥239.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(225)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_232" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/_thumb_P_1438047501681.jpg" <img src="${ctx}/statics/images/loading.gif" alt="包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特价宽松" height="140" width="140" class="pic_img_232">
												</a>
												<p class="title">
													<a target="_blank" href="#">包邮 新款户外军迷阿帕奇T恤 纯棉男款短袖半袖特...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥274.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(232)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_226">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/226_thumb_G_1437587179362.jpg" <img src="${ctx}/statics/images/loading.gif" alt="亿嘉IJARL 时尚陶瓷28头韩式骨瓷餐具套装 东洋之心" height="140" width="140" class="pic_img_226">
												</a>
												<p class="title">
													<a target="_blank" href="#">亿嘉IJARL 时尚陶瓷28头韩式骨瓷餐具套装 ...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥239.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(226)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_228">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/228_thumb_G_1437587380356.jpg" <img src="${ctx}/statics/images/loading.gif" alt="剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 FZG453HX56" height="140" width="140" class="pic_img_228">
												</a>
												<p class="title">
													<a target="_blank" href="#">剑林 景德镇陶瓷56头韩式餐具套装 红袖添香 F...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥299.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(228)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_230">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/230_thumb_G_1437587680625.jpg" <img src="${ctx}/statics/images/loading.gif" alt="304不锈钢宝宝分格餐盘 儿童餐具分隔格碗餐盘婴儿盘" height="140" width="140" class="pic_img_230">
												</a>
												<p class="title">
													<a target="_blank" href="#">304不锈钢宝宝分格餐盘 儿童餐具分隔格碗餐盘婴...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥35.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(230)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_227" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/227_thumb_G_1437587283837.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雅诚德Arst餐具套装56头套装中式碗碟套装陶瓷碗碟套装釉上彩" height="140" width="140" class="pic_img_227">
												</a>
												<p class="title">
													<a target="_blank" href="#">雅诚德Arst餐具套装56头套装中式碗碟套装陶瓷...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥455.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(227)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>
							</div>
						</div>
						<div class="floor-brand">
							<div class="tabs-brand">
								<div class="brand">
									<div class="brand-con">
										<ul class="yyyy_6" style="position: absolute; width: 1309px; height: 40px; top: 0px; left: 1px;">
											<li class="fore1">
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437429301820829673.jpg" data-original="data/brandlogo/1437429301820829673.jpg" alt="MISS FACE" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432889680565833.jpg" data-original="data/brandlogo/1437432889680565833.jpg" alt="稻草人" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437436872931901715.jpg" data-original="data/brandlogo/1437436872931901715.jpg" alt="全有家居" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431622196514430.jpg" data-original="data/brandlogo/1437431622196514430.jpg" alt="楼兰密语" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437428980225446797.jpg" data-original="data/brandlogo/1437428980225446797.jpg" alt="Dior" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437434636974815215.jpg" data-original="data/brandlogo/1437434636974815215.jpg" alt="罗莱" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432522356081645.jpg" data-original="data/brandlogo/1437432522356081645.jpg" alt="猫人" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437433840630073088.jpg" data-original="data/brandlogo/1437433840630073088.jpg" alt="格兰仕" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437434929995564906.jpg" data-original="data/brandlogo/1437434929995564906.jpg" alt="慧乐家" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437436852699771679.jpg" data-original="data/brandlogo/1437436852699771679.jpg" alt="水星家纺" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432919534972670.jpg" data-original="data/brandlogo/1437432919534972670.jpg" alt="爱华仕" style="display: inline;">
												</a>
											</li>
										</ul>
										<div class="brand-btn">
											<a class="brand-left right_6" href="#">&lt;</a>
											<a class="brand-right left_6" href="#">&gt;</a>
										</div>
									</div>
								</div>
								<script type="text/javascript">
									Move(".left_6", ".right_6", ".yyyy_6", ".brand", "10");
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="floor" floor="4" color="#e31939">
				<div class="floor-layout">
					<div class="floor-con">
						<div class="floor-title">
							<h2>
						<span> 4F </span>
						<a href="#">男装、女装、内衣、珠宝</a>
					</h2>
							<ul class="floor-tabs-nav">
								<li class="floor-tabs-selected">
									<h3 style="border-color: #e31939 #e31939 #fff; color: #e31939;">精挑细选</h3>
								</li>
								<li class="">
									<h3>女装馆</h3>
								</li>
								<li class="">
									<h3>内衣馆</h3>
								</li>
								<li class="">
									<h3>男装馆</h3>
								</li>
							</ul>
						</div>
						<script type="text/javascript">
							$(function() {
								var sWidth = $("#focus_2").width(); //获取焦点图的宽度（显示面积）
								var len = $("#focus_2 ul li").length; //获取焦点图个数
								var index = 0;
								var picTimer;
								//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
								var btn = "<div class='btn'>";

								for(var i = 0; i < len; i++) {
									btn += "<span></span>";
								}
								btn += "</div>";
								$("#focus_2").append(btn);
								$("#focus_2 .btnBg").css("opacity", 0.5);

								//为小按钮添加鼠标滑入事件，以显示相应的内容
								$("#focus_2 .btn span").css("opacity", 0.3).mouseover(function() {
									index = $("#focus_2 .btn span").index(this);
									showPics(index);
								}).eq(0).trigger("mouseover");

								//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
								$("#focus_2 ul").css("width", sWidth * (len));

								//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
								$("#focus_2").hover(function() {
									clearInterval(picTimer);
								}, function() {
									picTimer = setInterval(function() {
										showPics(index);
										index++;
										if(index == len) {
											index = 0;
										}
									}, 3000); //此4000代表自动播放的间隔，单位：毫秒
								}).trigger("mouseleave");

								//显示图片函数，根据接收的index值显示相应的内容
								function showPics(index) { //普通切换
									var nowLeft = -index * sWidth; //根据index值计算ul元素的left值
									$("#focus_2 ul").stop(true, false).animate({
										"left": nowLeft
									}, 300);
									$("#focus_2 .btn span").stop(true, false).animate({
										"opacity": "0.3"
									}, 300).eq(index).stop(true, false).animate({
										"opacity": "0.7"
									}, 300); //为当前的按钮切换到选中的效果
								}
							});
						</script>
						<div class="floor-content">
							<div class="floor-left" style="border-top: 1px #e31939 solid;">
								<div id="focus_2" class="floor-banner">
									<ul style="left: -540px; width: 810px;">
										<li>
											<a href="#"><img data-original="data/afficheimg/1453770196046135727.jpg" <img src="${ctx}/statics/images/1453770196046135727.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453770209051247810.jpg" <img src="${ctx}/statics/images/1453770209051247810.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453713356163484260.jpg" <img src="${ctx}/statics/images/1453713356163484260.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
									</ul>
									<div class="btn"><span style="opacity: 0.3;"></span><span style="opacity: 0.3;"></span><span style="opacity: 0.7;"></span></div>
								</div>

								<ul class="floor-words">
									<li>
										<a href="#">
											连衣裙 </a>
									</li>
									<li>
										<a href="#">
											连体裤 </a>
									</li>
									<li>
										<a href="#">
											短外套 </a>
									</li>
									<li>
										<a href="#">
											风衣 </a>
									</li>
									<li>
										<a href="#">
											POLO衫 </a>
									</li>
									<li>
										<a href="#">
											迷彩裤 </a>
									</li>
									<li>
										<a href="#">
											登山鞋 </a>
									</li>
									<li>
										<a href="#">
											高跟鞋 </a>
									</li>
								</ul>
							</div>
							<div class="floor-right">

								<div class="floor-tabs-panel" style="border-top: 1px #e31939 solid;">
									<div class="goods" id="li_400">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="./images/1409272951415985699.jpg" <img src="${ctx}/statics/images/loading.gif" alt="12" height="140" width="140" class="pic_img_400">
											</a>
											<p class="title">
												<a target="_blank" href="#">12</a>
											</p>
											<p class="price">
												<span>
																								¥0.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(400)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_33">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/33_thumb_G_1437507221390.jpg" <img src="${ctx}/statics/images/33_thumb_G_1437507221390.jpg" alt="夏装新款修身假两件无袖绣花蕾丝连衣裙" height="140" width="140" class="pic_img_33" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">夏装新款修身假两件无袖绣花蕾丝连衣裙</a>
											</p>
											<p class="price">
												<span>
																								¥279.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(33)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_34">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/34_thumb_G_1437507487587.jpg" <img src="${ctx}/statics/images/34_thumb_G_1437507487587.jpg" alt="夏装甜美爱心提花蕾丝连衣裙女 宽松欧根纱背心裙" height="140" width="140" class="pic_img_34" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">夏装甜美爱心提花蕾丝连衣裙女 宽松欧根纱背心裙</a>
											</p>
											<p class="price">
												<span>
																								¥368.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(34)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_36" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/36_thumb_G_1437508564664.jpg" <img src="${ctx}/statics/images/36_thumb_G_1437508564664.jpg" alt="荷叶边欧根纱刺绣短袖镂空蕾丝连衣裙 夏韩系小香风短裙A字连衣裙" height="140" width="140" class="pic_img_36" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">荷叶边欧根纱刺绣短袖镂空蕾丝连衣裙 夏韩系小香风...</a>
											</p>
											<p class="price">
												<span>
																								¥198.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(36)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_38">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/38_thumb_G_1437514275132.jpg" <img src="${ctx}/statics/images/38_thumb_G_1437514275132.jpg" alt="高端2015夏装新款修身淑坊女女装蕾丝短袖复古森女连衣裙装" height="140" width="140" class="pic_img_38" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">高端2015夏装新款修身淑坊女女装蕾丝短袖复古森...</a>
											</p>
											<p class="price">
												<span>
																								¥178.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(38)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_40">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/40_thumb_G_1437515363345.jpg" <img src="${ctx}/statics/images/40_thumb_G_1437515363345.jpg" alt="伊芙丽秋装新款翻领小西装女 2015新款 西装外套女春秋" height="140" width="140" class="pic_img_40" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">伊芙丽秋装新款翻领小西装女 2015新款 西装外...</a>
											</p>
											<p class="price">
												<span>
																								¥299.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(40)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_42">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/42_thumb_G_1437515742056.jpg" <img src="${ctx}/statics/images/42_thumb_G_1437515742056.jpg" alt="2015新款修身开衫短款七分袖小西装女薄网纱披肩防晒衫小外套女夏" height="140" width="140" class="pic_img_42" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">2015新款修身开衫短款七分袖小西装女薄网纱披肩...</a>
											</p>
											<p class="price">
												<span>
																								¥259.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(42)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_45" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/45_thumb_G_1437516035103.jpg" <img src="${ctx}/statics/images/45_thumb_G_1437516035103.jpg" alt="2015夏装韩版修身白色小西装女薄外套" height="140" width="140" class="pic_img_45" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">2015夏装韩版修身白色小西装女薄外套</a>
											</p>
											<p class="price">
												<span>
																								¥399.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(45)" title="加入购物车"></a>
										</div>
									</div>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_33">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/33_thumb_G_1437507221390.jpg" <img src="${ctx}/statics/images/loading.gif" alt="夏装新款修身假两件无袖绣花蕾丝连衣裙" height="140" width="140" class="pic_img_33">
												</a>
												<p class="title">
													<a target="_blank" href="#">夏装新款修身假两件无袖绣花蕾丝连衣裙</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥279.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(33)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_34">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/34_thumb_G_1437507487587.jpg" <img src="${ctx}/statics/images/loading.gif" alt="夏装甜美爱心提花蕾丝连衣裙女 宽松欧根纱背心裙" height="140" width="140" class="pic_img_34">
												</a>
												<p class="title">
													<a target="_blank" href="#">夏装甜美爱心提花蕾丝连衣裙女 宽松欧根纱背心裙</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥368.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(34)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_36">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/36_thumb_G_1437508564664.jpg" <img src="${ctx}/statics/images/loading.gif" alt="荷叶边欧根纱刺绣短袖镂空蕾丝连衣裙 夏韩系小香风短裙A字连衣裙" height="140" width="140" class="pic_img_36">
												</a>
												<p class="title">
													<a target="_blank" href="#">荷叶边欧根纱刺绣短袖镂空蕾丝连衣裙 夏韩系小香风...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥198.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(36)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_38" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/38_thumb_G_1437514275132.jpg" <img src="${ctx}/statics/images/loading.gif" alt="高端2015夏装新款修身淑坊女女装蕾丝短袖复古森女连衣裙装" height="140" width="140" class="pic_img_38">
												</a>
												<p class="title">
													<a target="_blank" href="#">高端2015夏装新款修身淑坊女女装蕾丝短袖复古森...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥178.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(38)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_42">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/42_thumb_G_1437515742056.jpg" <img src="${ctx}/statics/images/loading.gif" alt="2015新款修身开衫短款七分袖小西装女薄网纱披肩防晒衫小外套女夏" height="140" width="140" class="pic_img_42">
												</a>
												<p class="title">
													<a target="_blank" href="#">2015新款修身开衫短款七分袖小西装女薄网纱披肩...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥259.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(42)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_45">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/45_thumb_G_1437516035103.jpg" <img src="${ctx}/statics/images/loading.gif" alt="2015夏装韩版修身白色小西装女薄外套" height="140" width="140" class="pic_img_45">
												</a>
												<p class="title">
													<a target="_blank" href="#">2015夏装韩版修身白色小西装女薄外套</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥399.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(45)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_46">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/46_thumb_G_1437516342367.jpg" <img src="${ctx}/statics/images/loading.gif" alt="2015夏季小西装女外套夏装薄款韩版修身短款小西服" height="140" width="140" class="pic_img_46">
												</a>
												<p class="title">
													<a target="_blank" href="#">2015夏季小西装女外套夏装薄款韩版修身短款小西...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥213.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(46)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_51" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/51_thumb_G_1437519866381.jpg" <img src="${ctx}/statics/images/loading.gif" alt="高端2015夏装新款修身淑坊女女装蕾丝短袖复女连衣裙装" height="140" width="140" class="pic_img_51">
												</a>
												<p class="title">
													<a target="_blank" href="#">高端2015夏装新款修身淑坊女女装蕾丝短袖复女连...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥199.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(51)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_69">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/69_thumb_G_1437521666394.jpg" <img src="${ctx}/statics/images/loading.gif" alt="夏季性感吊带真丝睡裙100%桑蚕丝深V睡衣女士纯色蕾丝家居服女" height="140" width="140" class="pic_img_69">
												</a>
												<p class="title">
													<a target="_blank" href="#">夏季性感吊带真丝睡裙100%桑蚕丝深V睡衣女士纯...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥199.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(69)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_70">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/70_thumb_G_1437521749240.jpg" <img src="${ctx}/statics/images/loading.gif" alt="纱桑蚕丝真丝睡衣女士夏季纯色吊带睡裙" height="140" width="140" class="pic_img_70">
												</a>
												<p class="title">
													<a target="_blank" href="#">纱桑蚕丝真丝睡衣女士夏季纯色吊带睡裙</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥199.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(70)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_78">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/78_thumb_G_1437522187316.jpg" <img src="${ctx}/statics/images/loading.gif" alt="100%桑蚕丝两件套夏季短袖真丝睡衣女套装" height="140" width="140" class="pic_img_78">
												</a>
												<p class="title">
													<a target="_blank" href="#">100%桑蚕丝两件套夏季短袖真丝睡衣女套装</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥199.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(78)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_82" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/82_thumb_G_1437522300426.jpg" <img src="${ctx}/statics/images/loading.gif" alt="大码薄款女士真丝睡衣女夏季丝绸性感100%桑蚕丝睡裙" height="140" width="140" class="pic_img_82">
												</a>
												<p class="title">
													<a target="_blank" href="#">大码薄款女士真丝睡衣女夏季丝绸性感100%桑蚕丝...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥199.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(82)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_56">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/56_thumb_G_1437520837769.jpg" <img src="${ctx}/statics/images/loading.gif" alt="2015新品真丝睡衣女款可爱娃娃衫家居服春秋桑蚕丝睡裙" height="140" width="140" class="pic_img_56">
												</a>
												<p class="title">
													<a target="_blank" href="#">2015新品真丝睡衣女款可爱娃娃衫家居服春秋桑蚕...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥199.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(56)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_71">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/71_thumb_G_1437521951345.jpg" <img src="${ctx}/statics/images/loading.gif" alt="真丝睡衣女士夏季修身性感吊带真丝睡衣裙桑蚕丝睡衣" height="140" width="140" class="pic_img_71">
												</a>
												<p class="title">
													<a target="_blank" href="#">真丝睡衣女士夏季修身性感吊带真丝睡衣裙桑蚕丝睡衣</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥199.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(71)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_67">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/67_thumb_G_1437521471001.jpg" <img src="${ctx}/statics/images/loading.gif" alt="一米画纱桑蚕丝吊带睡裙女夏季纯色真丝睡衣 " height="140" width="140" class="pic_img_67">
												</a>
												<p class="title">
													<a target="_blank" href="#">一米画纱桑蚕丝吊带睡裙女夏季纯色真丝睡衣</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥199.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(67)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_63" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/63_thumb_G_1437521098807.jpg" <img src="${ctx}/statics/images/loading.gif" alt="真丝睡衣女士夏季桑蚕丝绸春秋家居服性感吊带睡裙" height="140" width="140" class="pic_img_63">
												</a>
												<p class="title">
													<a target="_blank" href="#">真丝睡衣女士夏季桑蚕丝绸春秋家居服性感吊带睡裙</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥199.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(63)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_99">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/99_thumb_G_1437523325748.jpg" <img src="${ctx}/statics/images/loading.gif" alt="纯棉牛仔拼接修身男Polo衫" height="140" width="140" class="pic_img_99">
												</a>
												<p class="title">
													<a target="_blank" href="#">纯棉牛仔拼接修身男Polo衫</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥149.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(99)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_102">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/102_thumb_G_1437523460978.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Polo衫男短袖 2015夏装男装短袖t恤 男士拼接撞色修身韩版潮" height="140" width="140" class="pic_img_102">
												</a>
												<p class="title">
													<a target="_blank" href="#">Polo衫男短袖 2015夏装男装短袖t恤 男士...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥149.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(102)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_105">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/105_thumb_G_1437523502682.jpg" <img src="${ctx}/statics/images/loading.gif" alt="法曼斯2015夏装新款长绒棉短袖t恤商务男士休闲天丝翻领纯色上衣" height="140" width="140" class="pic_img_105">
												</a>
												<p class="title">
													<a target="_blank" href="#">法曼斯2015夏装新款长绒棉短袖t恤商务男士休闲...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥149.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(105)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_107" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/_thumb_P_1438047799582.jpg" <img src="${ctx}/statics/images/loading.gif" alt="纯棉弹力修身男装商务短袖" height="140" width="140" class="pic_img_107">
												</a>
												<p class="title">
													<a target="_blank" href="#">纯棉弹力修身男装商务短袖</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥149.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(107)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_96">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/96_thumb_G_1437523830530.jpg" <img src="${ctx}/statics/images/loading.gif" alt="2015夏季新品 与狼共舞短袖T恤 男士纯棉翻领多彩polo衫潮" height="140" width="140" class="pic_img_96">
												</a>
												<p class="title">
													<a target="_blank" href="#">2015夏季新品 与狼共舞短袖T恤 男士纯棉翻领...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥149.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(96)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_90">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/90_thumb_G_1437523731725.jpg" <img src="${ctx}/statics/images/loading.gif" alt="2015新款男装 男士夏季多彩短袖polo衫男 休闲双层立领T恤 " height="140" width="140" class="pic_img_90">
												</a>
												<p class="title">
													<a target="_blank" href="#">2015新款男装 男士夏季多彩短袖polo衫男 ...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥99.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(90)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_92">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/92_thumb_G_1437523024248.jpg" <img src="${ctx}/statics/images/loading.gif" alt="人气5折杰克琼斯夏纯棉条纹撞色POLO衫短袖T恤" height="140" width="140" class="pic_img_92">
												</a>
												<p class="title">
													<a target="_blank" href="#">人气5折杰克琼斯夏纯棉条纹撞色POLO衫短袖T恤</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥299.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(92)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_95" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/95_thumb_G_1437523157627.jpg" <img src="${ctx}/statics/images/loading.gif" alt="与狼共舞短袖T恤 2015夏装新款 男士Polo衫 男装纯棉翻领" height="140" width="140" class="pic_img_95">
												</a>
												<p class="title">
													<a target="_blank" href="#">与狼共舞短袖T恤 2015夏装新款 男士Polo...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥199.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(95)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>
							</div>
						</div>
						<div class="floor-brand">
							<div class="tabs-brand">
								<div class="brand">
									<div class="brand-con">
										<ul class="yyyy_2" style="position: absolute; width: 1547px; height: 40px; top: 0px; left: 1px;">
											<li class="fore1">
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437436184083765295.jpg" data-original="data/brandlogo/1437436184083765295.jpg" alt="达芙妮" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437434172223731860.jpg" data-original="data/brandlogo/1437434172223731860.jpg" alt="伊莱克斯" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432530915190983.jpg" data-original="data/brandlogo/1437432530915190983.jpg" alt="茵曼（INMAN）" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431622196514430.jpg" data-original="data/brandlogo/1437431622196514430.jpg" alt="楼兰密语" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432618356392882.jpg" data-original="data/brandlogo/1437432618356392882.jpg" alt="伊芙丽" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432559402862574.jpg" data-original="data/brandlogo/1437432559402862574.jpg" alt="七匹狼" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437434180841305731.jpg" data-original="data/brandlogo/1437434180841305731.jpg" alt="艾力斯特" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437434684850488373.jpg" data-original="data/brandlogo/1437434684850488373.jpg" alt="溢彩年华" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432540121764652.jpg" data-original="data/brandlogo/1437432540121764652.jpg" alt="缪诗" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432569401929463.jpg" data-original="data/brandlogo/1437432569401929463.jpg" alt="佐丹奴" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437436548477690017.jpg" data-original="data/brandlogo/1437436548477690017.jpg" alt="卓诗尼" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432607921594733.jpg" data-original="data/brandlogo/1437432607921594733.jpg" alt="曼妮芬（ManniForm）" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432512022024124.jpg" data-original="data/brandlogo/1437432512022024124.jpg" alt="享爱." style="display: inline;">
												</a>
											</li>
										</ul>
										<div class="brand-btn">
											<a class="brand-left right_2" href="#">&lt;</a>
											<a class="brand-right left_2" href="#">&gt;</a>
										</div>
									</div>
								</div>
								<script type="text/javascript">
									Move(".left_2", ".right_2", ".yyyy_2", ".brand", "10");
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="floor" floor="5" color="#e31939">
				<div class="floor-layout">
					<div class="floor-con">
						<div class="floor-title">
							<h2>
						<span> 5F </span>
						<a href="#">个护化妆、清洁用品</a>
					</h2>
							<ul class="floor-tabs-nav">
								<li class="floor-tabs-selected">
									<h3 style="border-color: #e31939 #e31939 #fff; color: #e31939;">精挑细选</h3>
								</li>
								<li class="">
									<h3>香水彩妆</h3>
								</li>
								<li class="">
									<h3>面部护肤</h3>
								</li>
								<li class="">
									<h3>洗发护发</h3>
								</li>
							</ul>
						</div>
						<script type="text/javascript">
							$(function() {
								var sWidth = $("#focus_3").width(); //获取焦点图的宽度（显示面积）
								var len = $("#focus_3 ul li").length; //获取焦点图个数
								var index = 0;
								var picTimer;
								//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
								var btn = "<div class='btn'>";

								for(var i = 0; i < len; i++) {
									btn += "<span></span>";
								}
								btn += "</div>";
								$("#focus_3").append(btn);
								$("#focus_3 .btnBg").css("opacity", 0.5);

								//为小按钮添加鼠标滑入事件，以显示相应的内容
								$("#focus_3 .btn span").css("opacity", 0.3).mouseover(function() {
									index = $("#focus_3 .btn span").index(this);
									showPics(index);
								}).eq(0).trigger("mouseover");

								//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
								$("#focus_3 ul").css("width", sWidth * (len));

								//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
								$("#focus_3").hover(function() {
									clearInterval(picTimer);
								}, function() {
									picTimer = setInterval(function() {
										showPics(index);
										index++;
										if(index == len) {
											index = 0;
										}
									}, 3000); //此4000代表自动播放的间隔，单位：毫秒
								}).trigger("mouseleave");

								//显示图片函数，根据接收的index值显示相应的内容
								function showPics(index) { //普通切换
									var nowLeft = -index * sWidth; //根据index值计算ul元素的left值
									$("#focus_3 ul").stop(true, false).animate({
										"left": nowLeft
									}, 300);
									$("#focus_3 .btn span").stop(true, false).animate({
										"opacity": "0.3"
									}, 300).eq(index).stop(true, false).animate({
										"opacity": "0.7"
									}, 300); //为当前的按钮切换到选中的效果
								}
							});
						</script>
						<div class="floor-content">
							<div class="floor-left" style="border-top: 1px #e31939 solid;">
								<div id="focus_3" class="floor-banner">
									<ul style="left: -540px; width: 810px;">
										<li>
											<a href="#"><img data-original="data/afficheimg/1453713506155335417.jpg" <img src="${ctx}/statics/images/1453713506155335417.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453770152535273176.jpg" <img src="${ctx}/statics/images/1453770152535273176.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453770166462521600.jpg" <img src="${ctx}/statics/images/1453770166462521600.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
									</ul>
									<div class="btn"><span style="opacity: 0.3;"></span><span style="opacity: 0.3;"></span><span style="opacity: 0.7;"></span></div>
								</div>

								<ul class="floor-words">
									<li>
										<a href="#">
											香水 </a>
									</li>
									<li>
										<a href="#">
											底妆 </a>
									</li>
									<li>
										<a href="#">
											腮红 </a>
									</li>
									<li>
										<a href="#">
											眼部 </a>
									</li>
									<li>
										<a href="#">
											唇部 </a>
									</li>
									<li>
										<a href="#">
											沐浴 </a>
									</li>
									<li>
										<a href="#">
											润肤 </a>
									</li>
									<li>
										<a href="#">
											颈部 </a>
									</li>
								</ul>
							</div>
							<div class="floor-right">

								<div class="floor-tabs-panel" style="border-top: 1px #e31939 solid;">
									<div class="goods" id="li_153">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/153_thumb_G_1437530435593.jpg" <img src="${ctx}/statics/images/153_thumb_G_1437530435593.jpg" alt="沙宣垂坠质感润发乳750ml" height="140" width="140" class="pic_img_153" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">沙宣垂坠质感润发乳750ml</a>
											</p>
											<p class="price">
												<span>
																								¥90.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(153)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_163">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/163_thumb_G_1437530957991.jpg" <img src="${ctx}/statics/images/163_thumb_G_1437530957991.jpg" alt="欧莱雅透明质酸水润洗发露400ml*2+透明质酸水润润发乳400ml" height="140" width="140" class="pic_img_163" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">欧莱雅透明质酸水润洗发露400ml*2+透明质酸...</a>
											</p>
											<p class="price">
												<span>
																								¥75.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(163)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_158">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/158_thumb_G_1437530565110.jpg" <img src="${ctx}/statics/images/158_thumb_G_1437530565110.jpg" alt="L’OREAL/欧莱雅 精油润养洗发露700ml" height="140" width="140" class="pic_img_158" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">L’OREAL/欧莱雅 精油润养洗发露700ml</a>
											</p>
											<p class="price">
												<span>
																								¥40.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(158)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_161" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/161_thumb_G_1437530711935.jpg" <img src="${ctx}/statics/images/161_thumb_G_1437530711935.jpg" alt="欧莱雅(L’OREAL)多效修复超值洗护套装" height="140" width="140" class="pic_img_161" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">欧莱雅(L’OREAL)多效修复超值洗护套装</a>
											</p>
											<p class="price">
												<span>
																								¥60.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(161)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_164">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/164_thumb_G_1437531039732.jpg" <img src="${ctx}/statics/images/164_thumb_G_1437531039732.jpg" alt="L’OREAL/欧莱雅 洗发护发套装 " height="140" width="140" class="pic_img_164" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">L’OREAL/欧莱雅 洗发护发套装</a>
											</p>
											<p class="price">
												<span>
																								¥98.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(164)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_166">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/166_thumb_G_1437531158758.jpg" <img src="${ctx}/statics/images/loading.gif" alt="欧莱雅角质顺滑去屑洗发露200ml" height="140" width="140" class="pic_img_166">
											</a>
											<p class="title">
												<a target="_blank" href="#">欧莱雅角质顺滑去屑洗发露200ml</a>
											</p>
											<p class="price">
												<span>
																								¥22.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(166)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_173">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/173_thumb_G_1437531646299.jpg" <img src="${ctx}/statics/images/173_thumb_G_1437531646299.jpg" alt="Dior迪奥女士香水豪华礼物套装 礼盒套装*真我*甜心*魅惑各5ML" height="140" width="140" class="pic_img_173" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">Dior迪奥女士香水豪华礼物套装 礼盒套装*真我...</a>
											</p>
											<p class="price">
												<span>
																								¥580.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(173)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_169" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/169_thumb_G_1437531448738.jpg" <img src="${ctx}/statics/images/169_thumb_G_1437531448738.jpg" alt="迪奥(Dior) EDT CD 花漾甜心女士香水100ML" height="140" width="140" class="pic_img_169" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">迪奥(Dior) EDT CD 花漾甜心女士香水...</a>
											</p>
											<p class="price">
												<span>
																								¥790.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(169)" title="加入购物车"></a>
										</div>
									</div>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_149">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/149_thumb_G_1437530202440.jpg" <img src="${ctx}/statics/images/loading.gif" alt="卡姿兰彩妆套装 睫毛膏粉饼眉粉眉笔 专柜初学者化妆套装" height="140" width="140" class="pic_img_149">
												</a>
												<p class="title">
													<a target="_blank" href="#">卡姿兰彩妆套装 睫毛膏粉饼眉粉眉笔 专柜初学者化...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥490.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(149)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_152">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/152_thumb_G_1437530333924.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Dior迪奥 限量版彩妆盘 眼影 粉饼 睫毛膏 腮红 唇彩" height="140" width="140" class="pic_img_152">
												</a>
												<p class="title">
													<a target="_blank" href="#">Dior迪奥 限量版彩妆盘 眼影 粉饼 睫毛膏 ...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥529.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(152)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_136">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/136_thumb_G_1437528720014.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Dior迪奥唇膏/变色润唇膏/粉红魅惑润唇膏3.5g 润唇蜜/口红 唇彩 唇膏" height="140" width="140" class="pic_img_136">
												</a>
												<p class="title">
													<a target="_blank" href="#">Dior迪奥唇膏/变色润唇膏/粉红魅惑润唇膏3....</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥180.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(136)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_173" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/173_thumb_G_1437531646299.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Dior迪奥女士香水豪华礼物套装 礼盒套装*真我*甜心*魅惑各5ML" height="140" width="140" class="pic_img_173">
												</a>
												<p class="title">
													<a target="_blank" href="#">Dior迪奥女士香水豪华礼物套装 礼盒套装*真我...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥580.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(173)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_134">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/134_thumb_G_1437528500701.jpg" <img src="${ctx}/statics/images/loading.gif" alt="迪奥新魅惑淡香水5ml" height="140" width="140" class="pic_img_134">
												</a>
												<p class="title">
													<a target="_blank" href="#">迪奥新魅惑淡香水5ml</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥129.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(134)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_135">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/135_thumb_G_1437528636775.jpg" <img src="${ctx}/statics/images/loading.gif" alt="迪奥真我香水50ml" height="140" width="140" class="pic_img_135">
												</a>
												<p class="title">
													<a target="_blank" href="#">迪奥真我香水50ml</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥953.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(135)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_169">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/169_thumb_G_1437531448738.jpg" <img src="${ctx}/statics/images/loading.gif" alt="迪奥(Dior) EDT CD 花漾甜心女士香水100ML" height="140" width="140" class="pic_img_169">
												</a>
												<p class="title">
													<a target="_blank" href="#">迪奥(Dior) EDT CD 花漾甜心女士香水...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥790.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(169)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_144" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/144_thumb_G_1437529582625.jpg" <img src="${ctx}/statics/images/loading.gif" alt="CK卡文克莱卡莱优淡香水100ML ck香水" height="140" width="140" class="pic_img_144">
												</a>
												<p class="title">
													<a target="_blank" href="#">CK卡文克莱卡莱优淡香水100ML ck香水</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥119.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(144)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_141">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/141_thumb_G_1437529046088.jpg" <img src="${ctx}/statics/images/loading.gif" alt="韩束 红石榴鲜活水盈七件套（洗面奶/爽肤水/乳液/眼霜）" height="140" width="140" class="pic_img_141">
												</a>
												<p class="title">
													<a target="_blank" href="#">韩束 红石榴鲜活水盈七件套（洗面奶/爽肤水/乳液...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥169.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(141)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_142">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/142_thumb_G_1437529449611.jpg" <img src="${ctx}/statics/images/loading.gif" alt="兰芝夜间修护睡眠面膜70ml" height="140" width="140" class="pic_img_142">
												</a>
												<p class="title">
													<a target="_blank" href="#">兰芝夜间修护睡眠面膜70ml</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥193.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(142)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_64">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/64_thumb_G_1437521108958.jpg" <img src="${ctx}/statics/images/loading.gif" alt="shiseido资生堂 安热沙倍呵防晒乳25mL SPF30+儿童专用防晒霜" height="140" width="140" class="pic_img_64">
												</a>
												<p class="title">
													<a target="_blank" href="#">shiseido资生堂 安热沙倍呵防晒乳25mL...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥180.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(64)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_138" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/138_thumb_G_1437528884580.jpg" <img src="${ctx}/statics/images/loading.gif" alt="SK-II护肤精华露75ml" height="140" width="140" class="pic_img_138">
												</a>
												<p class="title">
													<a target="_blank" href="#">SK-II护肤精华露75ml</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥419.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(138)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_73">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/73_thumb_G_1437521912159.jpg" <img src="${ctx}/statics/images/loading.gif" alt="shiseido资生堂 新漾美肌亮润眼霜15mL提拉 紧致去黑眼圈眼袋" height="140" width="140" class="pic_img_73">
												</a>
												<p class="title">
													<a target="_blank" href="#">shiseido资生堂 新漾美肌亮润眼霜15mL...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥360.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(73)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_77">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/77_thumb_G_1437522146544.jpg" <img src="${ctx}/statics/images/loading.gif" alt="shiseido/资生堂 限量悦薇珀翡基础护理套装 抗老祛黄 面部护理" height="140" width="140" class="pic_img_77">
												</a>
												<p class="title">
													<a target="_blank" href="#">shiseido/资生堂 限量悦薇珀翡基础护理套...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥480.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(77)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_98">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/98_thumb_G_1437523250241.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雅诗兰黛（Estee Lauder）肌透修护眼部精华霜15ml" height="140" width="140" class="pic_img_98">
												</a>
												<p class="title">
													<a target="_blank" href="#">雅诗兰黛（Estee Lauder）肌透修护眼部...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥379.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(98)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_108" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/108_thumb_G_1437523652983.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雅诗兰黛护肤礼盒（眼霜15ML+柔肤霜15ML+晚霜15ML+精华露7ML）" height="140" width="140" class="pic_img_108">
												</a>
												<p class="title">
													<a target="_blank" href="#">雅诗兰黛护肤礼盒（眼霜15ML+柔肤霜15ML+...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥545.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(108)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_153">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/153_thumb_G_1437530435593.jpg" <img src="${ctx}/statics/images/loading.gif" alt="沙宣垂坠质感润发乳750ml" height="140" width="140" class="pic_img_153">
												</a>
												<p class="title">
													<a target="_blank" href="#">沙宣垂坠质感润发乳750ml</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥90.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(153)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_163">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/163_thumb_G_1437530957991.jpg" <img src="${ctx}/statics/images/loading.gif" alt="欧莱雅透明质酸水润洗发露400ml*2+透明质酸水润润发乳400ml" height="140" width="140" class="pic_img_163">
												</a>
												<p class="title">
													<a target="_blank" href="#">欧莱雅透明质酸水润洗发露400ml*2+透明质酸...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥75.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(163)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_145">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/145_thumb_G_1437529875442.jpg" <img src="${ctx}/statics/images/loading.gif" alt="海飞丝去屑洗发露(海洋活力型)750ml" height="140" width="140" class="pic_img_145">
												</a>
												<p class="title">
													<a target="_blank" href="#">海飞丝去屑洗发露(海洋活力型)750ml</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥81.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(145)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_146" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/146_thumb_G_1437530004681.jpg" <img src="${ctx}/statics/images/loading.gif" alt="水之密语 凝润水护护发素600ml" height="140" width="140" class="pic_img_146">
												</a>
												<p class="title">
													<a target="_blank" href="#">水之密语 凝润水护护发素600ml</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥68.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(146)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_158">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/158_thumb_G_1437530565110.jpg" <img src="${ctx}/statics/images/loading.gif" alt="L’OREAL/欧莱雅 精油润养洗发露700ml" height="140" width="140" class="pic_img_158">
												</a>
												<p class="title">
													<a target="_blank" href="#">L’OREAL/欧莱雅 精油润养洗发露700ml</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥40.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(158)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_161">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/161_thumb_G_1437530711935.jpg" <img src="${ctx}/statics/images/loading.gif" alt="欧莱雅(L’OREAL)多效修复超值洗护套装" height="140" width="140" class="pic_img_161">
												</a>
												<p class="title">
													<a target="_blank" href="#">欧莱雅(L’OREAL)多效修复超值洗护套装</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥60.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(161)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_164">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/164_thumb_G_1437531039732.jpg" <img src="${ctx}/statics/images/loading.gif" alt="L’OREAL/欧莱雅 洗发护发套装 " height="140" width="140" class="pic_img_164">
												</a>
												<p class="title">
													<a target="_blank" href="#">L’OREAL/欧莱雅 洗发护发套装</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥98.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(164)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_166" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/166_thumb_G_1437531158758.jpg" <img src="${ctx}/statics/images/loading.gif" alt="欧莱雅角质顺滑去屑洗发露200ml" height="140" width="140" class="pic_img_166">
												</a>
												<p class="title">
													<a target="_blank" href="#">欧莱雅角质顺滑去屑洗发露200ml</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥22.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(166)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>
							</div>
						</div>
						<div class="floor-brand">
							<div class="tabs-brand">
								<div class="brand">
									<div class="brand-con">
										<ul class="yyyy_3" style="position: absolute; width: 1190px; height: 40px; top: 0px; left: 1px;">
											<li class="fore1">
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437429723052152963.jpg" data-original="data/brandlogo/1437429723052152963.jpg" alt="韩束" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437428885582505638.jpg" data-original="data/brandlogo/1437428885582505638.jpg" alt="雅诗兰黛" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437429832547767116.jpg" data-original="data/brandlogo/1437429832547767116.jpg" alt="珀莱雅" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437429934755120717.jpg" data-original="data/brandlogo/1437429934755120717.jpg" alt="兰芝" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/loading.gif" data-original="data/brandlogo/1437428736611050860.jpg" alt="资生堂">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437428980225446797.jpg" data-original="data/brandlogo/1437428980225446797.jpg" alt="Dior" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437428934219489398.jpg" data-original="data/brandlogo/1437428934219489398.jpg" alt="相宜本草" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437430106997787476.jpg" data-original="data/brandlogo/1437430106997787476.jpg" alt="碧欧泉" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437429603999601355.jpg" data-original="data/brandlogo/1437429603999601355.jpg" alt="SK-ll" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437428796001158264.jpg" data-original="data/brandlogo/1437428796001158264.jpg" alt="CK" style="display: inline;">
												</a>
											</li>
										</ul>
										<div class="brand-btn">
											<a class="brand-left right_3" href="#">&lt;</a>
											<a class="brand-right left_3" href="#">&gt;</a>
										</div>
									</div>
								</div>
								<script type="text/javascript">
									Move(".left_3", ".right_3", ".yyyy_3", ".brand", "10");
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="floor" floor="6" color="#e31939">
				<div class="floor-layout">
					<div class="floor-con">
						<div class="floor-title">
							<h2>
						<span> 6F </span>
						<a href="#">酒类饮料</a>
					</h2>
							<ul class="floor-tabs-nav">
								<li class="floor-tabs-selected">
									<h3 style="border-color: #e31939 #e31939 #fff; color: #e31939;">精挑细选</h3>
								</li>
								<li class="">
									<h3>酒水</h3>
								</li>
								<li class="">
									<h3>冲调饮品</h3>
								</li>
								<li class="">
									<h3>饮料饮品</h3>
								</li>
							</ul>
						</div>
						<script type="text/javascript">
							$(function() {
								var sWidth = $("#focus_7").width(); //获取焦点图的宽度（显示面积）
								var len = $("#focus_7 ul li").length; //获取焦点图个数
								var index = 0;
								var picTimer;
								//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
								var btn = "<div class='btn'>";

								for(var i = 0; i < len; i++) {
									btn += "<span></span>";
								}
								btn += "</div>";
								$("#focus_7").append(btn);
								$("#focus_7 .btnBg").css("opacity", 0.5);

								//为小按钮添加鼠标滑入事件，以显示相应的内容
								$("#focus_7 .btn span").css("opacity", 0.3).mouseover(function() {
									index = $("#focus_7 .btn span").index(this);
									showPics(index);
								}).eq(0).trigger("mouseover");

								//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
								$("#focus_7 ul").css("width", sWidth * (len));

								//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
								$("#focus_7").hover(function() {
									clearInterval(picTimer);
								}, function() {
									picTimer = setInterval(function() {
										showPics(index);
										index++;
										if(index == len) {
											index = 0;
										}
									}, 3000); //此4000代表自动播放的间隔，单位：毫秒
								}).trigger("mouseleave");

								//显示图片函数，根据接收的index值显示相应的内容
								function showPics(index) { //普通切换
									var nowLeft = -index * sWidth; //根据index值计算ul元素的left值
									$("#focus_7 ul").stop(true, false).animate({
										"left": nowLeft
									}, 300);
									$("#focus_7 .btn span").stop(true, false).animate({
										"opacity": "0.3"
									}, 300).eq(index).stop(true, false).animate({
										"opacity": "0.7"
									}, 300); //为当前的按钮切换到选中的效果
								}
							});
						</script>
						<div class="floor-content">
							<div class="floor-left" style="border-top: 1px #e31939 solid;">
								<div id="focus_7" class="floor-banner">
									<ul style="left: -540px; width: 810px;">
										<li>
											<a href="#"><img data-original="data/afficheimg/1453713143024923572.jpg" <img src="${ctx}/statics/images/1453713143024923572.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453769929957149393.jpg" <img src="${ctx}/statics/images/1453769929957149393.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453769971570439446.jpg" <img src="${ctx}/statics/images/1453769971570439446.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
									</ul>
									<div class="btn"><span style="opacity: 0.3;"></span><span style="opacity: 0.3;"></span><span style="opacity: 0.7;"></span></div>
								</div>

								<ul class="floor-words">
									<li>
										<a href="#">
											白酒 </a>
									</li>
									<li>
										<a href="#">
											啤酒 </a>
									</li>
									<li>
										<a href="#">
											养生酒 </a>
									</li>
									<li>
										<a href="#">
											蜂蜜 </a>
									</li>
									<li>
										<a href="#">
											茶叶 </a>
									</li>
									<li>
										<a href="#">
											奶茶 </a>
									</li>
									<li>
										<a href="#">
											麦片谷物 </a>
									</li>
									<li>
										<a href="#">
											咖啡 </a>
									</li>
								</ul>
							</div>
							<div class="floor-right">

								<div class="floor-tabs-panel" style="border-top: 1px #e31939 solid;">
									<div class="goods" id="li_287">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201603/thumb_img/287_thumb_G_1457592139010.jpg" <img src="${ctx}/statics/images/287_thumb_G_1457592139010.jpg" alt="韩国原装进口lotte乐天 2%富足水蜜桃果汁饮料240ml听装 夏季饮料" height="140" width="140" class="pic_img_287" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">韩国原装进口lotte乐天 2%富足水蜜桃果汁饮...</a>
											</p>
											<p class="price">
												<span>
																								¥5.3																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(287)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_271">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/271_thumb_G_1456452775873.jpg" <img src="${ctx}/statics/images/271_thumb_G_1456452775873.jpg" alt="江口醇 方形蓝色马六甲 52度500ml*2瓶装 高度浓香型国产白酒 纯粮酒水特价包邮" height="140" width="140" class="pic_img_271" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">江口醇 方形蓝色马六甲 52度500ml*2瓶装...</a>
											</p>
											<p class="price">
												<span>
																								¥198.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(271)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_272">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/272_thumb_G_1456452879681.jpg" <img src="${ctx}/statics/images/272_thumb_G_1456452879681.jpg" alt="江鼎 白酒衡水老白干大青花50度高度白酒500ML" height="140" width="140" class="pic_img_272" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">江鼎 白酒衡水老白干大青花50度高度白酒500M...</a>
											</p>
											<p class="price">
												<span>
																								¥118.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(272)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_273" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/273_thumb_G_1456452987184.jpg" <img src="${ctx}/statics/images/273_thumb_G_1456452987184.jpg" alt="康师傅优悦水550ml*24瓶（整箱）" height="140" width="140" class="pic_img_273" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">康师傅优悦水550ml*24瓶（整箱）</a>
											</p>
											<p class="price">
												<span>
																								¥19.9																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(273)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_274">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/274_thumb_G_1456453088662.jpg" <img src="${ctx}/statics/images/274_thumb_G_1456453088662.jpg" alt="可口可乐 碳酸饮料 汽水 1.25L" height="140" width="140" class="pic_img_274" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">可口可乐 碳酸饮料 汽水 1.25L</a>
											</p>
											<p class="price">
												<span>
																								¥4.2																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(274)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_275">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/275_thumb_G_1456453296341.jpg" <img src="${ctx}/statics/images/275_thumb_G_1456453296341.jpg" alt="水动乐柠檬味600ml" height="140" width="140" class="pic_img_275" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">水动乐柠檬味600ml</a>
											</p>
											<p class="price">
												<span>
																								¥3.9																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(275)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_266">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201602/thumb_img/266_thumb_G_1456452313192.jpg" <img src="${ctx}/statics/images/266_thumb_G_1456452313192.jpg" alt="雅士利 优怡高钙高铁奶粉 400g" height="140" width="140" class="pic_img_266" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">雅士利 优怡高钙高铁奶粉 400g</a>
											</p>
											<p class="price">
												<span>
																								¥37.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(266)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_286" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201603/thumb_img/286_thumb_G_1457592064813.jpg" <img src="${ctx}/statics/images/286_thumb_G_1457592064813.jpg" alt="永味堂红番石榴汁饮料960ml" height="140" width="140" class="pic_img_286" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">永味堂红番石榴汁饮料960ml</a>
											</p>
											<p class="price">
												<span>
																								¥13.5																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(286)" title="加入购物车"></a>
										</div>
									</div>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_271">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/271_thumb_G_1456452775873.jpg" <img src="${ctx}/statics/images/loading.gif" alt="江口醇 方形蓝色马六甲 52度500ml*2瓶装 高度浓香型国产白酒 纯粮酒水特价包邮" height="140" width="140" class="pic_img_271">
												</a>
												<p class="title">
													<a target="_blank" href="#">江口醇 方形蓝色马六甲 52度500ml*2瓶装...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥198.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(271)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_272">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/272_thumb_G_1456452879681.jpg" <img src="${ctx}/statics/images/loading.gif" alt="江鼎 白酒衡水老白干大青花50度高度白酒500ML" height="140" width="140" class="pic_img_272">
												</a>
												<p class="title">
													<a target="_blank" href="#">江鼎 白酒衡水老白干大青花50度高度白酒500M...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥118.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(272)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_270">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/270_thumb_G_1456452662995.jpg" <img src="${ctx}/statics/images/loading.gif" alt="五粮液 45度小酒版 水晶礼盒装 浓香型白酒 官方授权 酒厂直供 中国名酒 250ML" height="140" width="140" class="pic_img_270">
												</a>
												<p class="title">
													<a target="_blank" href="#">五粮液 45度小酒版 水晶礼盒装 浓香型白酒 官...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥200.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(270)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_269" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/269_thumb_G_1456452562968.jpg" <img src="${ctx}/statics/images/loading.gif" alt="酒仙网 大成·澜爵2009珍藏版品丽珠干红葡萄酒750ml 红酒 国产酒水" height="140" width="140" class="pic_img_269">
												</a>
												<p class="title">
													<a target="_blank" href="#">酒仙网 大成·澜爵2009珍藏版品丽珠干红葡萄酒...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥39.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(269)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_268">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/268_thumb_G_1456452475405.jpg" <img src="${ctx}/statics/images/loading.gif" alt="RIO锐澳伏特加鸡尾酒-宾治(混合水果)275ml瓶" height="140" width="140" class="pic_img_268">
												</a>
												<p class="title">
													<a target="_blank" href="#">RIO锐澳伏特加鸡尾酒-宾治(混合水果)275m...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥10.5																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(268)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_256">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/256_thumb_G_1456451184573.jpg" <img src="${ctx}/statics/images/loading.gif" alt="女儿红6年陈350ML 整箱6瓶装" height="140" width="140" class="pic_img_256">
												</a>
												<p class="title">
													<a target="_blank" href="#">女儿红6年陈350ML 整箱6瓶装</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥159.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(256)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_255">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/255_thumb_G_1456451111974.jpg" <img src="${ctx}/statics/images/loading.gif" alt="ROM威士忌鸡尾酒青柠味预调酒275ml" height="140" width="140" class="pic_img_255">
												</a>
												<p class="title">
													<a target="_blank" href="#">ROM威士忌鸡尾酒青柠味预调酒275ml</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥12.9																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(255)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_254" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/254_thumb_G_1456451004329.jpg" <img src="${ctx}/statics/images/loading.gif" alt="洋河海之蓝42度480ml" height="140" width="140" class="pic_img_254">
												</a>
												<p class="title">
													<a target="_blank" href="#">洋河海之蓝42度480ml</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥129.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(254)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_266">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/266_thumb_G_1456452313192.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雅士利 优怡高钙高铁奶粉 400g" height="140" width="140" class="pic_img_266">
												</a>
												<p class="title">
													<a target="_blank" href="#">雅士利 优怡高钙高铁奶粉 400g</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥37.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(266)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_267">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/267_thumb_G_1456452393137.jpg" <img src="${ctx}/statics/images/loading.gif" alt="艺福堂 茗茶 红糖姜茶 女人茶 袋泡茶 速溶姜茶花茶125g/盒*2" height="140" width="140" class="pic_img_267">
												</a>
												<p class="title">
													<a target="_blank" href="#">艺福堂 茗茶 红糖姜茶 女人茶 袋泡茶 速溶姜茶...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥29.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(267)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_265">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/265_thumb_G_1456452231528.jpg" <img src="${ctx}/statics/images/loading.gif" alt="恒寿堂 蜜炼柠檬茶大瓶装850g/瓶" height="140" width="140" class="pic_img_265">
												</a>
												<p class="title">
													<a target="_blank" href="#">恒寿堂 蜜炼柠檬茶大瓶装850g/瓶</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥32.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(265)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_264" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/264_thumb_G_1456452043487.jpg" <img src="${ctx}/statics/images/loading.gif" alt="藏原蜜语 高原土蜂蜜野生百花蜜糖500g*2瓶 天然无添加" height="140" width="140" class="pic_img_264">
												</a>
												<p class="title">
													<a target="_blank" href="#">藏原蜜语 高原土蜂蜜野生百花蜜糖500g*2瓶 ...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥49.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(264)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_263">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/263_thumb_G_1456451965817.jpg" <img src="${ctx}/statics/images/loading.gif" alt="伊利 学生高锌高钙奶粉400g" height="140" width="140" class="pic_img_263">
												</a>
												<p class="title">
													<a target="_blank" href="#">伊利 学生高锌高钙奶粉400g</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥32.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(263)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_260">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/260_thumb_G_1456451682591.jpg" <img src="${ctx}/statics/images/loading.gif" alt="伊利 女士高铁高钙奶粉 400g" height="140" width="140" class="pic_img_260">
												</a>
												<p class="title">
													<a target="_blank" href="#">伊利 女士高铁高钙奶粉 400g</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥32.8																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(260)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_261">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/261_thumb_G_1456451756248.jpg" <img src="${ctx}/statics/images/loading.gif" alt="维维 维他型豆奶粉 560g" height="140" width="140" class="pic_img_261">
												</a>
												<p class="title">
													<a target="_blank" href="#">维维 维他型豆奶粉 560g</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥15.9																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(261)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_262" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/262_thumb_G_1456451850522.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雀巢 中老年奶粉 850g雀巢" height="140" width="140" class="pic_img_262">
												</a>
												<p class="title">
													<a target="_blank" href="#">雀巢 中老年奶粉 850g雀巢</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥75.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(262)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_273">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/273_thumb_G_1456452987184.jpg" <img src="${ctx}/statics/images/loading.gif" alt="康师傅优悦水550ml*24瓶（整箱）" height="140" width="140" class="pic_img_273">
												</a>
												<p class="title">
													<a target="_blank" href="#">康师傅优悦水550ml*24瓶（整箱）</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥19.9																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(273)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_274">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/274_thumb_G_1456453088662.jpg" <img src="${ctx}/statics/images/loading.gif" alt="可口可乐 碳酸饮料 汽水 1.25L" height="140" width="140" class="pic_img_274">
												</a>
												<p class="title">
													<a target="_blank" href="#">可口可乐 碳酸饮料 汽水 1.25L</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥4.2																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(274)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_275">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/275_thumb_G_1456453296341.jpg" <img src="${ctx}/statics/images/loading.gif" alt="水动乐柠檬味600ml" height="140" width="140" class="pic_img_275">
												</a>
												<p class="title">
													<a target="_blank" href="#">水动乐柠檬味600ml</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥3.9																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(275)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_259" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/259_thumb_G_1456451555948.jpg" <img src="${ctx}/statics/images/loading.gif" alt="舒达源天然苏打水400ml*24" height="140" width="140" class="pic_img_259">
												</a>
												<p class="title">
													<a target="_blank" href="#">舒达源天然苏打水400ml*24</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥209.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(259)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_257">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/257_thumb_G_1456451288943.jpg" <img src="${ctx}/statics/images/loading.gif" alt="汇源 乐乐园 100%复合果蔬汁 5+7 125ml*16包" height="140" width="140" class="pic_img_257">
												</a>
												<p class="title">
													<a target="_blank" href="#">汇源 乐乐园 100%复合果蔬汁 5+7 125...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥29.9																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(257)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_258">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/258_thumb_G_1456451394456.jpg" <img src="${ctx}/statics/images/loading.gif" alt="汇源 100%苹果果汁 1L/盒" height="140" width="140" class="pic_img_258">
												</a>
												<p class="title">
													<a target="_blank" href="#">汇源 100%苹果果汁 1L/盒</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥15.9																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(258)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_252">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/252_thumb_G_1456450660879.jpg" <img src="${ctx}/statics/images/loading.gif" alt="1.25L雪碧+1.25L美汁源果粒橙" height="140" width="140" class="pic_img_252">
												</a>
												<p class="title">
													<a target="_blank" href="#">1.25L雪碧+1.25L美汁源果粒橙</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥9.9																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(252)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_253" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201602/thumb_img/253_thumb_G_1456450820776.jpg" <img src="${ctx}/statics/images/loading.gif" alt="七喜冰爽柠檬汽水330ml*24（整箱）" height="140" width="140" class="pic_img_253">
												</a>
												<p class="title">
													<a target="_blank" href="#">七喜冰爽柠檬汽水330ml*24（整箱）</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥43.7																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(253)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="floor" floor="7" color="#e31939">
				<div class="floor-layout">
					<a href="#">
						<img src="${ctx}/statics/images/1437500529310918993.jpg" alt="" height="100" width="1210">
					</a>
					<div class="floor-con">
						<div class="floor-title">
							<h2>
						<span> 7F </span>
						<a href="#">母婴、玩具乐器</a>
					</h2>
							<ul class="floor-tabs-nav">
								<li class="floor-tabs-selected">
									<h3 style="border-color: #e31939 #e31939 #fff; color: #e31939;">精挑细选</h3>
								</li>
								<li class="">
									<h3>孕婴奶粉</h3>
								</li>
								<li class="">
									<h3>营养/辅食</h3>
								</li>
								<li class="">
									<h3>孕婴洗护</h3>
								</li>
							</ul>
						</div>
						<script type="text/javascript">
							$(function() {
								var sWidth = $("#focus_8").width(); //获取焦点图的宽度（显示面积）
								var len = $("#focus_8 ul li").length; //获取焦点图个数
								var index = 0;
								var picTimer;
								//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
								var btn = "<div class='btn'>";

								for(var i = 0; i < len; i++) {
									btn += "<span></span>";
								}
								btn += "</div>";
								$("#focus_8").append(btn);
								$("#focus_8 .btnBg").css("opacity", 0.5);

								//为小按钮添加鼠标滑入事件，以显示相应的内容
								$("#focus_8 .btn span").css("opacity", 0.3).mouseover(function() {
									index = $("#focus_8 .btn span").index(this);
									showPics(index);
								}).eq(0).trigger("mouseover");

								//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
								$("#focus_8 ul").css("width", sWidth * (len));

								//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
								$("#focus_8").hover(function() {
									clearInterval(picTimer);
								}, function() {
									picTimer = setInterval(function() {
										showPics(index);
										index++;
										if(index == len) {
											index = 0;
										}
									}, 3000); //此4000代表自动播放的间隔，单位：毫秒
								}).trigger("mouseleave");

								//显示图片函数，根据接收的index值显示相应的内容
								function showPics(index) { //普通切换
									var nowLeft = -index * sWidth; //根据index值计算ul元素的left值
									$("#focus_8 ul").stop(true, false).animate({
										"left": nowLeft
									}, 300);
									$("#focus_8 .btn span").stop(true, false).animate({
										"opacity": "0.3"
									}, 300).eq(index).stop(true, false).animate({
										"opacity": "0.7"
									}, 300); //为当前的按钮切换到选中的效果
								}
							});
						</script>
						<div class="floor-content">
							<div class="floor-left" style="border-top: 1px #e31939 solid;">
								<div id="focus_8" class="floor-banner">
									<ul style="left: -540px; width: 810px;">
										<li>
											<a href="#"><img data-original="data/afficheimg/1453713115766629987.jpg" <img src="${ctx}/statics/images/1453713115766629987.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453770036067182149.jpg" <img src="${ctx}/statics/images/1453770036067182149.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453770058656742233.jpg" <img src="${ctx}/statics/images/1453770058656742233.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
									</ul>
									<div class="btn"><span style="opacity: 0.3;"></span><span style="opacity: 0.3;"></span><span style="opacity: 0.7;"></span></div>
								</div>

								<ul class="floor-words">
									<li>
										<a href="#">
											特配奶粉 </a>
									</li>
									<li>
										<a href="#">
											宝宝沐浴 </a>
									</li>
									<li>
										<a href="#">
											儿童防晒 </a>
									</li>
									<li>
										<a href="#">
											爽身粉 </a>
									</li>
									<li>
										<a href="#">
											奶瓶清洗 </a>
									</li>
									<li>
										<a href="#">
											孕妇护肤 </a>
									</li>
									<li>
										<a href="#">
											浴室用品 </a>
									</li>
									<li>
										<a href="#">
											吸奶器 </a>
									</li>
								</ul>
							</div>
							<div class="floor-right">

								<div class="floor-tabs-panel" style="border-top: 1px #e31939 solid;">
									<div class="goods" id="li_49">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/49_thumb_G_1437517210470.jpg" <img src="${ctx}/statics/images/loading.gif" alt="安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装" height="140" width="140" class="pic_img_49">
											</a>
											<p class="title">
												<a target="_blank" href="#">安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装</a>
											</p>
											<p class="price">
												<span>
																								¥128.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(49)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_209">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/209_thumb_G_1437583601151.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雀巢(Nestle)超级能恩幼儿配方奶粉 3段 800克" height="140" width="140" class="pic_img_209">
											</a>
											<p class="title">
												<a target="_blank" href="#">雀巢(Nestle)超级能恩幼儿配方奶粉 3段 ...</a>
											</p>
											<p class="price">
												<span>
																								¥278.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(209)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_221">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/221_thumb_G_1437586129474.jpg" <img src="${ctx}/statics/images/221_thumb_G_1437586129474.jpg" alt="易简 专业婴儿儿童理发器 充电防水静音/HK668A(小鱼）" height="140" width="140" class="pic_img_221" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">易简 专业婴儿儿童理发器 充电防水静音/HK66...</a>
											</p>
											<p class="price">
												<span>
																								¥89.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(221)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_208" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/208_thumb_G_1437583379285.jpg" <img src="${ctx}/statics/images/208_thumb_G_1437583379285.jpg" alt="雅培(Abbott) 亲体 金装喜康力幼儿配方奶粉 3段（1-3岁幼儿适用）" height="140" width="140" class="pic_img_208" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">雅培(Abbott) 亲体 金装喜康力幼儿配方奶...</a>
											</p>
											<p class="price">
												<span>
																								¥151.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(208)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_212">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/212_thumb_G_1437584420342.jpg" <img src="${ctx}/statics/images/212_thumb_G_1437584420342.jpg" alt="飞鹤(FIRMUS)超级飞帆臻爱倍护幼儿配方奶粉" height="140" width="140" class="pic_img_212" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">飞鹤(FIRMUS)超级飞帆臻爱倍护幼儿配方奶粉</a>
											</p>
											<p class="price">
												<span>
																								¥226.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(212)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_213">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/213_thumb_G_1437584699293.jpg" <img src="${ctx}/statics/images/213_thumb_G_1437584699293.jpg" alt="亨氏 (Heinz) 甜嫩玉米泥 113g" height="140" width="140" class="pic_img_213" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">亨氏 (Heinz) 甜嫩玉米泥 113g</a>
											</p>
											<p class="price">
												<span>
																								¥51.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(213)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_217">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/217_thumb_G_1437585667325.jpg" <img src="${ctx}/statics/images/217_thumb_G_1437585667325.jpg" alt="盈泰 充气游泳池家庭成人大型超大号儿童游泳池" height="140" width="140" class="pic_img_217" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">盈泰 充气游泳池家庭成人大型超大号儿童游泳池</a>
											</p>
											<p class="price">
												<span>
																								¥198.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(217)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_218" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/218_thumb_G_1437585757292.jpg" <img src="${ctx}/statics/images/218_thumb_G_1437585757292.jpg" alt="欧培(OPEN)儿童洗澡桶 加厚环保塑料宝宝沐浴桶大号" height="140" width="140" class="pic_img_218" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">欧培(OPEN)儿童洗澡桶 加厚环保塑料宝宝沐浴...</a>
											</p>
											<p class="price">
												<span>
																								¥178.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(218)" title="加入购物车"></a>
										</div>
									</div>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_209">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/209_thumb_G_1437583601151.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雀巢(Nestle)超级能恩幼儿配方奶粉 3段 800克" height="140" width="140" class="pic_img_209">
												</a>
												<p class="title">
													<a target="_blank" href="#">雀巢(Nestle)超级能恩幼儿配方奶粉 3段 ...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥278.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(209)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_208">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/208_thumb_G_1437583379285.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雅培(Abbott) 亲体 金装喜康力幼儿配方奶粉 3段（1-3岁幼儿适用）" height="140" width="140" class="pic_img_208">
												</a>
												<p class="title">
													<a target="_blank" href="#">雅培(Abbott) 亲体 金装喜康力幼儿配方奶...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥151.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(208)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_212">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/212_thumb_G_1437584420342.jpg" <img src="${ctx}/statics/images/loading.gif" alt="飞鹤(FIRMUS)超级飞帆臻爱倍护幼儿配方奶粉" height="140" width="140" class="pic_img_212">
												</a>
												<p class="title">
													<a target="_blank" href="#">飞鹤(FIRMUS)超级飞帆臻爱倍护幼儿配方奶粉</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥226.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(212)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_211" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/211_thumb_G_1437584133612.jpg" <img src="${ctx}/statics/images/loading.gif" alt="伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿适用)" height="140" width="140" class="pic_img_211">
												</a>
												<p class="title">
													<a target="_blank" href="#">伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥358.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(211)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_210">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/210_thumb_G_1437583822170.jpg" <img src="${ctx}/statics/images/loading.gif" alt="惠氏(Wyeth)S-26金装爱儿乐婴儿配方奶粉 1段 900克" height="140" width="140" class="pic_img_210">
												</a>
												<p class="title">
													<a target="_blank" href="#">惠氏(Wyeth)S-26金装爱儿乐婴儿配方奶粉...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥203.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(210)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_150">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/150_thumb_G_1437530289196.jpg" <img src="${ctx}/statics/images/loading.gif" alt="惠氏(Wyeth)S-26金装幼儿乐幼儿配方奶粉" height="140" width="140" class="pic_img_150">
												</a>
												<p class="title">
													<a target="_blank" href="#">惠氏(Wyeth)S-26金装幼儿乐幼儿配方奶粉</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥211.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(150)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_154">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/154_thumb_G_1437530449742.jpg" <img src="${ctx}/statics/images/loading.gif" alt="美素力（frisolac）金装婴儿配方奶粉 1段（0-6个月婴儿适用）" height="140" width="140" class="pic_img_154">
												</a>
												<p class="title">
													<a target="_blank" href="#">美素力（frisolac）金装婴儿配方奶粉 1段...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥222.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(154)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_148" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/148_thumb_G_1437530157610.jpg" <img src="${ctx}/statics/images/loading.gif" alt="诺优能(Nutrilon) 幼儿配方奶粉 3段(12-24个月幼儿适用) " height="140" width="140" class="pic_img_148">
												</a>
												<p class="title">
													<a target="_blank" href="#">诺优能(Nutrilon) 幼儿配方奶粉 3段(...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥159.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(148)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_209">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/209_thumb_G_1437583601151.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雀巢(Nestle)超级能恩幼儿配方奶粉 3段 800克" height="140" width="140" class="pic_img_209">
												</a>
												<p class="title">
													<a target="_blank" href="#">雀巢(Nestle)超级能恩幼儿配方奶粉 3段 ...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥278.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(209)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_208">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/208_thumb_G_1437583379285.jpg" <img src="${ctx}/statics/images/loading.gif" alt="雅培(Abbott) 亲体 金装喜康力幼儿配方奶粉 3段（1-3岁幼儿适用）" height="140" width="140" class="pic_img_208">
												</a>
												<p class="title">
													<a target="_blank" href="#">雅培(Abbott) 亲体 金装喜康力幼儿配方奶...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥151.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(208)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_212">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/212_thumb_G_1437584420342.jpg" <img src="${ctx}/statics/images/loading.gif" alt="飞鹤(FIRMUS)超级飞帆臻爱倍护幼儿配方奶粉" height="140" width="140" class="pic_img_212">
												</a>
												<p class="title">
													<a target="_blank" href="#">飞鹤(FIRMUS)超级飞帆臻爱倍护幼儿配方奶粉</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥226.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(212)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_213" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/213_thumb_G_1437584699293.jpg" <img src="${ctx}/statics/images/loading.gif" alt="亨氏 (Heinz) 甜嫩玉米泥 113g" height="140" width="140" class="pic_img_213">
												</a>
												<p class="title">
													<a target="_blank" href="#">亨氏 (Heinz) 甜嫩玉米泥 113g</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥51.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(213)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_211">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/211_thumb_G_1437584133612.jpg" <img src="${ctx}/statics/images/loading.gif" alt="伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿适用)" height="140" width="140" class="pic_img_211">
												</a>
												<p class="title">
													<a target="_blank" href="#">伊利 金领冠珍护幼儿配方奶粉 3段(1-3岁幼儿...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥358.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(211)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_215">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/215_thumb_G_1437585131029.jpg" <img src="${ctx}/statics/images/loading.gif" alt="HiPP喜宝 德国原装进口婴幼儿辅食肉泥" height="140" width="140" class="pic_img_215">
												</a>
												<p class="title">
													<a target="_blank" href="#">HiPP喜宝 德国原装进口婴幼儿辅食肉泥</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥48.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(215)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_214">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/214_thumb_G_1437584902078.jpg" <img src="${ctx}/statics/images/loading.gif" alt="亨氏 (Heinz) 乐维滋果汁泥-苹果黑加仑 (1-3岁适用) 120g" height="140" width="140" class="pic_img_214">
												</a>
												<p class="title">
													<a target="_blank" href="#">亨氏 (Heinz) 乐维滋果汁泥-苹果黑加仑 ...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥4.8																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(214)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_210" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/210_thumb_G_1437583822170.jpg" <img src="${ctx}/statics/images/loading.gif" alt="惠氏(Wyeth)S-26金装爱儿乐婴儿配方奶粉 1段 900克" height="140" width="140" class="pic_img_210">
												</a>
												<p class="title">
													<a target="_blank" href="#">惠氏(Wyeth)S-26金装爱儿乐婴儿配方奶粉...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥203.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(210)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_49">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/49_thumb_G_1437517210470.jpg" <img src="${ctx}/statics/images/loading.gif" alt="安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装" height="140" width="140" class="pic_img_49">
												</a>
												<p class="title">
													<a target="_blank" href="#">安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥128.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(49)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_221">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/221_thumb_G_1437586129474.jpg" <img src="${ctx}/statics/images/loading.gif" alt="易简 专业婴儿儿童理发器 充电防水静音/HK668A(小鱼）" height="140" width="140" class="pic_img_221">
												</a>
												<p class="title">
													<a target="_blank" href="#">易简 专业婴儿儿童理发器 充电防水静音/HK66...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥89.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(221)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_217">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/217_thumb_G_1437585667325.jpg" <img src="${ctx}/statics/images/loading.gif" alt="盈泰 充气游泳池家庭成人大型超大号儿童游泳池" height="140" width="140" class="pic_img_217">
												</a>
												<p class="title">
													<a target="_blank" href="#">盈泰 充气游泳池家庭成人大型超大号儿童游泳池</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥198.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(217)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_218" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/218_thumb_G_1437585757292.jpg" <img src="${ctx}/statics/images/loading.gif" alt="欧培(OPEN)儿童洗澡桶 加厚环保塑料宝宝沐浴桶大号" height="140" width="140" class="pic_img_218">
												</a>
												<p class="title">
													<a target="_blank" href="#">欧培(OPEN)儿童洗澡桶 加厚环保塑料宝宝沐浴...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥178.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(218)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_43">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/43_thumb_G_1437515785217.jpg" <img src="${ctx}/statics/images/loading.gif" alt="恩诺童新生儿奶瓶宝宝宽口径ppsu婴儿奶瓶" height="140" width="140" class="pic_img_43">
												</a>
												<p class="title">
													<a target="_blank" href="#">恩诺童新生儿奶瓶宝宝宽口径ppsu婴儿奶瓶</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥59.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(43)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_219">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/219_thumb_G_1437585857563.jpg" <img src="${ctx}/statics/images/loading.gif" alt="润本 儿童宝宝无味电热蚊香液 婴儿无刺激(无味型)" height="140" width="140" class="pic_img_219">
												</a>
												<p class="title">
													<a target="_blank" href="#">润本 儿童宝宝无味电热蚊香液 婴儿无刺激(无味型...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥24.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(219)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_220">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/220_thumb_G_1437585995276.jpg" <img src="${ctx}/statics/images/loading.gif" alt="润本（RUNBEN）驱蚊手环 植物精油驱蚊贴3条装" height="140" width="140" class="pic_img_220">
												</a>
												<p class="title">
													<a target="_blank" href="#">润本（RUNBEN）驱蚊手环 植物精油驱蚊贴3条...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥13.5																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(220)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_216" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/216_thumb_G_1437585478147.jpg" <img src="${ctx}/statics/images/loading.gif" alt="哈罗闪sanosan婴儿洗发露沐浴乳二合一" height="140" width="140" class="pic_img_216">
												</a>
												<p class="title">
													<a target="_blank" href="#">哈罗闪sanosan婴儿洗发露沐浴乳二合一</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥26.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(216)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>
							</div>
						</div>
						<div class="floor-brand">
							<div class="tabs-brand">
								<div class="brand">
									<div class="brand-con">
										<ul class="yyyy_8" style="position: absolute; width: 1666px; height: 40px; top: 0px; left: 1px;">
											<li class="fore1">
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437438440162456222.jpg" data-original="data/brandlogo/1437438440162456222.jpg" alt="贝古贝古" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432530915190983.jpg" data-original="data/brandlogo/1437432530915190983.jpg" alt="茵曼（INMAN）" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437429559203552370.jpg" data-original="data/brandlogo/1437429559203552370.jpg" alt="姬芮" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437438487779734440.jpg" data-original="data/brandlogo/1437438487779734440.jpg" alt="合生元" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437438450967200189.jpg" data-original="data/brandlogo/1437438450967200189.jpg" alt="皇家宝贝" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431322523724265.jpg" data-original="data/brandlogo/1437431322523724265.jpg" alt="蒙牛" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437438555681581254.jpg" data-original="data/brandlogo/1437438555681581254.jpg" alt="巴拉巴拉" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437438523104074504.jpg" data-original="data/brandlogo/1437438523104074504.jpg" alt="美赞臣" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437438478070289990.png" data-original="data/brandlogo/1437438478070289990.png" alt="呵宝童车" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437434684850488373.jpg" data-original="data/brandlogo/1437434684850488373.jpg" alt="溢彩年华" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431337248235690.jpg" data-original="data/brandlogo/1437431337248235690.jpg" alt="伊利" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437429042714176893.jpg" data-original="data/brandlogo/1437429042714176893.jpg" alt="爱丽" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437438571107733086.jpg" data-original="data/brandlogo/1437438571107733086.jpg" alt="青蛙王子" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432901296336878.jpg" data-original="data/brandlogo/1437432901296336878.jpg" alt="斯提亚" style="display: inline;">
												</a>
											</li>
										</ul>
										<div class="brand-btn">
											<a class="brand-left right_8" href="#">&lt;</a>
											<a class="brand-right left_8" href="#">&gt;</a>
										</div>
									</div>
								</div>
								<script type="text/javascript">
									Move(".left_8", ".right_8", ".yyyy_8", ".brand", "10");
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="floor" floor="8" color="#e31939">
				<div class="floor-layout">
					<a href="#">
						<img src="${ctx}/statics/images/1437500451024703742.jpg" alt="" height="100" width="1210">
					</a>
					<div class="floor-con">
						<div class="floor-title">
							<h2>
						<span> 8F </span>
						<a href="#">食品、酒类、生鲜、特产</a>
					</h2>
							<ul class="floor-tabs-nav">
								<li class="floor-tabs-selected">
									<h3 style="border-color: #e31939 #e31939 #fff; color: #e31939;">精挑细选</h3>
								</li>
								<li class="">
									<h3>进口水果</h3>
								</li>
								<li class="">
									<h3>糖果巧克力</h3>
								</li>
								<li class="">
									<h3>牛奶乳品</h3>
								</li>
							</ul>
						</div>
						<script type="text/javascript">
							$(function() {
								var sWidth = $("#focus_1").width(); //获取焦点图的宽度（显示面积）
								var len = $("#focus_1 ul li").length; //获取焦点图个数
								var index = 0;
								var picTimer;
								//以下代码添加数字按钮和按钮后的半透明条，还有上一页、下一页两个按钮
								var btn = "<div class='btn'>";

								for(var i = 0; i < len; i++) {
									btn += "<span></span>";
								}
								btn += "</div>";
								$("#focus_1").append(btn);
								$("#focus_1 .btnBg").css("opacity", 0.5);

								//为小按钮添加鼠标滑入事件，以显示相应的内容
								$("#focus_1 .btn span").css("opacity", 0.3).mouseover(function() {
									index = $("#focus_1 .btn span").index(this);
									showPics(index);
								}).eq(0).trigger("mouseover");

								//本例为左右滚动，即所有li元素都是在同一排向左浮动，所以这里需要计算出外围ul元素的宽度
								$("#focus_1 ul").css("width", sWidth * (len));

								//鼠标滑上焦点图时停止自动播放，滑出时开始自动播放
								$("#focus_1").hover(function() {
									clearInterval(picTimer);
								}, function() {
									picTimer = setInterval(function() {
										showPics(index);
										index++;
										if(index == len) {
											index = 0;
										}
									}, 3000); //此4000代表自动播放的间隔，单位：毫秒
								}).trigger("mouseleave");

								//显示图片函数，根据接收的index值显示相应的内容
								function showPics(index) { //普通切换
									var nowLeft = -index * sWidth; //根据index值计算ul元素的left值
									$("#focus_1 ul").stop(true, false).animate({
										"left": nowLeft
									}, 300);
									$("#focus_1 .btn span").stop(true, false).animate({
										"opacity": "0.3"
									}, 300).eq(index).stop(true, false).animate({
										"opacity": "0.7"
									}, 300); //为当前的按钮切换到选中的效果
								}
							});
						</script>
						<div class="floor-content">
							<div class="floor-left" style="border-top: 1px #e31939 solid;">
								<div id="focus_1" class="floor-banner">
									<ul style="left: -540px; width: 810px;">
										<li>
											<a href="#"><img data-original="data/afficheimg/1453770248150021849.jpg" <img src="${ctx}/statics/images/1453770248150021849.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453770267862982674.jpg" <img src="${ctx}/statics/images/1453770267862982674.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
										<li>
											<a href="#"><img data-original="data/afficheimg/1453713534596924915.jpg" <img src="${ctx}/statics/images/1453713534596924915.jpg" width="270" height="475" style="display: inline;"></a>
										</li>
									</ul>
									<div class="btn"><span style="opacity: 0.3;"></span><span style="opacity: 0.3;"></span><span style="opacity: 0.7;"></span></div>
								</div>

								<ul class="floor-words">
									<li>
										<a href="#">
											芒果桃李 </a>
									</li>
									<li>
										<a href="#">
											凤梨蓝莓 </a>
									</li>
									<li>
										<a href="#">
											口香糖 </a>
									</li>
									<li>
										<a href="#">
											棒棒糖 </a>
									</li>
									<li>
										<a href="#">
											软糖 </a>
									</li>
									<li>
										<a href="#">
											奶糖 </a>
									</li>
									<li>
										<a href="#">
											果冻 </a>
									</li>
									<li>
										<a href="#">
											杏仁 </a>
									</li>
								</ul>
							</div>
							<div class="floor-right">

								<div class="floor-tabs-panel" style="border-top: 1px #e31939 solid;">
									<div class="goods" id="li_31">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/31_thumb_G_1437506821290.jpg" <img src="${ctx}/statics/images/31_thumb_G_1437506821290.jpg" alt="台湾进口 百年老店糖之坊夏威夷果牛轧糖奶糖（蔓越莓味）120克" height="140" width="140" class="pic_img_31" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">台湾进口 百年老店糖之坊夏威夷果牛轧糖奶糖（蔓越...</a>
											</p>
											<p class="price">
												<span>
																								¥35.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(31)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_32">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/32_thumb_G_1437506920994.jpg" <img src="${ctx}/statics/images/32_thumb_G_1437506920994.jpg" alt="Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装" height="140" width="140" class="pic_img_32" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">Lindt瑞士莲黑巧克力特醇排装德国进口 70%...</a>
											</p>
											<p class="price">
												<span>
																								¥299.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(32)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_60">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/60_thumb_G_1437520982494.jpg" <img src="${ctx}/statics/images/60_thumb_G_1437520982494.jpg" alt="德国 进口牛奶 欧德堡（Oldenburger）超高温处理全脂纯牛奶1L*12" height="140" width="140" class="pic_img_60" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">德国 进口牛奶 欧德堡（Oldenburger）...</a>
											</p>
											<p class="price">
												<span>
																								¥119.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(60)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_62" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/62_thumb_G_1437521071878.jpg" <img src="${ctx}/statics/images/62_thumb_G_1437521071878.jpg" alt="澳大利亚 进口牛奶 德运（Devondale） 全脂牛奶 1L*10 整箱装" height="140" width="140" class="pic_img_62" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">澳大利亚 进口牛奶 德运（Devondale） ...</a>
											</p>
											<p class="price">
												<span>
																								¥99.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(62)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_68">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/68_thumb_G_1437521651986.jpg" <img src="${ctx}/statics/images/68_thumb_G_1437521651986.jpg" alt="新西兰 原装进口 纯牛奶 纽麦福（ Meadow fresh ）全脂1L*12盒/箱" height="140" width="140" class="pic_img_68" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">新西兰 原装进口 纯牛奶 纽麦福（ Meadow...</a>
											</p>
											<p class="price">
												<span>
																								¥109.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(68)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_72">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/72_thumb_G_1437521848992.jpg" <img src="${ctx}/statics/images/72_thumb_G_1437521848992.jpg" alt="波兰 进口牛奶 日昇（MLEKOVITA）全脂牛奶1L*12盒" height="140" width="140" class="pic_img_72" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">波兰 进口牛奶 日昇（MLEKOVITA）全脂牛...</a>
											</p>
											<p class="price">
												<span>
																								¥109.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(72)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_74">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/74_thumb_G_1437521987425.jpg" <img src="${ctx}/statics/images/74_thumb_G_1437521987425.jpg" alt="德运Devondale 脱脂高钙奶粉1kg" height="140" width="140" class="pic_img_74" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">德运Devondale 脱脂高钙奶粉1kg</a>
											</p>
											<p class="price">
												<span>
																								¥79.9																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(74)" title="加入购物车"></a>
										</div>
									</div>
									<div class="goods" id="li_79" style="width: 234px">
										<div class="wrap">
											<a target="_blank" href="#">
												<img data-original="images/201507/thumb_img/79_thumb_G_1437522204345.jpg" <img src="${ctx}/statics/images/79_thumb_G_1437522204345.jpg" alt="蒙牛 特仑苏 纯牛奶 250ml*12 礼盒装" height="140" width="140" class="pic_img_79" style="display: block;">
											</a>
											<p class="title">
												<a target="_blank" href="#">蒙牛 特仑苏 纯牛奶 250ml*12 礼盒装</a>
											</p>
											<p class="price">
												<span>
																								¥55.0																							</span>
											</p>
											<a class="add-cart" onclick="addToCart(79)" title="加入购物车"></a>
										</div>
									</div>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_20">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/20_thumb_G_1437504111409.jpg" <img src="${ctx}/statics/images/loading.gif" alt="佳沛新西兰阳光金奇异果12个/进口猕猴桃/新鲜水果" height="140" width="140" class="pic_img_20">
												</a>
												<p class="title">
													<a target="_blank" href="#">佳沛新西兰阳光金奇异果12个/进口猕猴桃/新鲜水...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥88.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(20)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_16">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/16_thumb_G_1437503698428.jpg" <img src="${ctx}/statics/images/loading.gif" alt="畅享礼盒 奇异果火龙果佳节送礼进口新鲜水果" height="140" width="140" class="pic_img_16">
												</a>
												<p class="title">
													<a target="_blank" href="#">畅享礼盒 奇异果火龙果佳节送礼进口新鲜水果</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥168.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(16)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_14">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/14_thumb_G_1437503630878.jpg" <img src="${ctx}/statics/images/loading.gif" alt="哥伦比亚金燕窝果 新鲜进口水果 麒麟果 黄色白心火龙果 4只" height="140" width="140" class="pic_img_14">
												</a>
												<p class="title">
													<a target="_blank" href="#">哥伦比亚金燕窝果 新鲜进口水果 麒麟果 黄色白心...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥121.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(14)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_11" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/11_thumb_G_1437503527861.jpg" <img src="${ctx}/statics/images/loading.gif" alt="七果果 越南白心火龙果1斤【3斤起拍，只多不少】 毁包赔 进口新鲜水果 堪比红心火龙果" height="140" width="140" class="pic_img_11">
												</a>
												<p class="title">
													<a target="_blank" href="#">七果果 越南白心火龙果1斤【3斤起拍，只多不少】...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥30.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(11)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_4">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/4_thumb_G_1437501961154.jpg" <img src="${ctx}/statics/images/loading.gif" alt="加拿大樱桃 2斤装 车厘子 樱桃 进口水果 新鲜水果" height="140" width="140" class="pic_img_4">
												</a>
												<p class="title">
													<a target="_blank" href="#">加拿大樱桃 2斤装 车厘子 樱桃 进口水果 新鲜...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥128.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(4)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_1">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/1_thumb_G_1437501058250.jpg" <img src="${ctx}/statics/images/loading.gif" alt="佳沛新西兰绿奇异果36个（原装）进口Zespri猕猴桃 新鲜水果准妈妈爱吃" height="140" width="140" class="pic_img_1">
												</a>
												<p class="title">
													<a target="_blank" href="#">佳沛新西兰绿奇异果36个（原装）进口Zespri...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥148.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(1)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_2">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/2_thumb_G_1437501414613.jpg" <img src="${ctx}/statics/images/loading.gif" alt="佳沛新西兰阳光金奇异果原装33个 zepris猕猴桃进口金果新鲜水果准妈妈" height="140" width="140" class="pic_img_2">
												</a>
												<p class="title">
													<a target="_blank" href="#">佳沛新西兰阳光金奇异果原装33个 zepris猕...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥218.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(2)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_26">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/26_thumb_G_1437505984631.jpg" <img src="${ctx}/statics/images/loading.gif" alt="韩国进口X-5花生夹心巧克力棒盒装（24根）864g" height="140" width="140" class="pic_img_26">
												</a>
												<p class="title">
													<a target="_blank" href="#">韩国进口X-5花生夹心巧克力棒盒装（24根）86...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥0.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(26)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_27">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/27_thumb_G_1437506372309.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Ferrero/费列罗 意大利进口威化榛果巧克力30粒礼盒装 生日礼物送女友情人节" height="140" width="140" class="pic_img_27">
												</a>
												<p class="title">
													<a target="_blank" href="#">Ferrero/费列罗 意大利进口威化榛果巧克力...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥79.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(27)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_31">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/31_thumb_G_1437506821290.jpg" <img src="${ctx}/statics/images/loading.gif" alt="台湾进口 百年老店糖之坊夏威夷果牛轧糖奶糖（蔓越莓味）120克" height="140" width="140" class="pic_img_31">
												</a>
												<p class="title">
													<a target="_blank" href="#">台湾进口 百年老店糖之坊夏威夷果牛轧糖奶糖（蔓越...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥35.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(31)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_32" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/32_thumb_G_1437506920994.jpg" <img src="${ctx}/statics/images/loading.gif" alt="Lindt瑞士莲黑巧克力特醇排装德国进口 70%可可黑巧克力10块组合 特惠分享装" height="140" width="140" class="pic_img_32">
												</a>
												<p class="title">
													<a target="_blank" href="#">Lindt瑞士莲黑巧克力特醇排装德国进口 70%...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥299.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(32)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_30">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/30_thumb_G_1437506667557.jpg" <img src="${ctx}/statics/images/loading.gif" alt="日本进口 KRACIE（KRACIE）牌玫瑰香味糖果32g" height="140" width="140" class="pic_img_30">
												</a>
												<p class="title">
													<a target="_blank" href="#">日本进口 KRACIE（KRACIE）牌玫瑰香味...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥12.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(30)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_29">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/29_thumb_G_1437506331258.jpg" <img src="${ctx}/statics/images/loading.gif" alt="意大利费列罗巧克力食品进口零食礼盒576粒整箱装结婚喜糖" height="140" width="140" class="pic_img_29">
												</a>
												<p class="title">
													<a target="_blank" href="#">意大利费列罗巧克力食品进口零食礼盒576粒整箱装...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥380.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(29)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_28">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/28_thumb_G_1437506346326.jpg" <img src="${ctx}/statics/images/loading.gif" alt="进口费列罗巧克力礼盒DIY心形27粒【顺丰包邮】【代写贺卡】七夕礼物生日创意礼品" height="140" width="140" class="pic_img_28">
												</a>
												<p class="title">
													<a target="_blank" href="#">进口费列罗巧克力礼盒DIY心形27粒【顺丰包邮】...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥120.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(28)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_55" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/55_thumb_G_1437520599834.jpg" <img src="${ctx}/statics/images/loading.gif" alt="嘉云糖 300g玻璃罐装 水果硬糖 喜糖 德国进口" height="140" width="140" class="pic_img_55">
												</a>
												<p class="title">
													<a target="_blank" href="#">嘉云糖 300g玻璃罐装 水果硬糖 喜糖 德国进...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥38.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(55)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>

								<div class="floor-tabs-panel floor-tabs-hide" style="border-top: 1px #e31939 solid;">

									<ul>
										<div class="goods" id="li_60">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/60_thumb_G_1437520982494.jpg" <img src="${ctx}/statics/images/loading.gif" alt="德国 进口牛奶 欧德堡（Oldenburger）超高温处理全脂纯牛奶1L*12" height="140" width="140" class="pic_img_60">
												</a>
												<p class="title">
													<a target="_blank" href="#">德国 进口牛奶 欧德堡（Oldenburger）...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥119.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(60)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_62">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/62_thumb_G_1437521071878.jpg" <img src="${ctx}/statics/images/loading.gif" alt="澳大利亚 进口牛奶 德运（Devondale） 全脂牛奶 1L*10 整箱装" height="140" width="140" class="pic_img_62">
												</a>
												<p class="title">
													<a target="_blank" href="#">澳大利亚 进口牛奶 德运（Devondale） ...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥99.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(62)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_68">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/68_thumb_G_1437521651986.jpg" <img src="${ctx}/statics/images/loading.gif" alt="新西兰 原装进口 纯牛奶 纽麦福（ Meadow fresh ）全脂1L*12盒/箱" height="140" width="140" class="pic_img_68">
												</a>
												<p class="title">
													<a target="_blank" href="#">新西兰 原装进口 纯牛奶 纽麦福（ Meadow...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥109.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(68)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_72" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/72_thumb_G_1437521848992.jpg" <img src="${ctx}/statics/images/loading.gif" alt="波兰 进口牛奶 日昇（MLEKOVITA）全脂牛奶1L*12盒" height="140" width="140" class="pic_img_72">
												</a>
												<p class="title">
													<a target="_blank" href="#">波兰 进口牛奶 日昇（MLEKOVITA）全脂牛...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥109.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(72)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_74">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/74_thumb_G_1437521987425.jpg" <img src="${ctx}/statics/images/loading.gif" alt="德运Devondale 脱脂高钙奶粉1kg" height="140" width="140" class="pic_img_74">
												</a>
												<p class="title">
													<a target="_blank" href="#">德运Devondale 脱脂高钙奶粉1kg</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥79.9																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(74)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_79">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/79_thumb_G_1437522204345.jpg" <img src="${ctx}/statics/images/loading.gif" alt="蒙牛 特仑苏 纯牛奶 250ml*12 礼盒装" height="140" width="140" class="pic_img_79">
												</a>
												<p class="title">
													<a target="_blank" href="#">蒙牛 特仑苏 纯牛奶 250ml*12 礼盒装</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥55.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(79)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_81">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/81_thumb_G_1437522277060.jpg" <img src="${ctx}/statics/images/loading.gif" alt="伊利 味可滋（巧克力）奶昔乳饮品240ml*12盒" height="140" width="140" class="pic_img_81">
												</a>
												<p class="title">
													<a target="_blank" href="#">伊利 味可滋（巧克力）奶昔乳饮品240ml*12...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥45.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(81)" title="加入购物车"></a>
											</div>
										</div>
										<div class="goods" id="li_75" style="width: 234px">
											<div class="wrap">
												<a target="_blank" href="#">
													<img data-original="images/201507/thumb_img/75_thumb_G_1437522091099.jpg" <img src="${ctx}/statics/images/loading.gif" alt="宾格瑞（BINGGRAE）香蕉味牛奶饮料 200ml*24" height="140" width="140" class="pic_img_75">
												</a>
												<p class="title">
													<a target="_blank" href="#">宾格瑞（BINGGRAE）香蕉味牛奶饮料 200...</a>
												</p>
												<p class="price">
													<span class="j_CurPrice">
																										¥129.0																									</span>
												</p>
												<a class="add-cart" onclick="addToCart(75)" title="加入购物车"></a>
											</div>
										</div>
									</ul>
								</div>
							</div>
						</div>
						<div class="floor-brand">
							<div class="tabs-brand">
								<div class="brand">
									<div class="brand-con">
										<ul class="yyyy_1" style="position: absolute; width: 1666px; height: 40px; top: 0px; left: 1px;">
											<li class="fore1">
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431337248235690.jpg" data-original="data/brandlogo/1437431337248235690.jpg" alt="伊利" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431655511622908.jpg" data-original="data/brandlogo/1437431655511622908.jpg" alt="糖糖屋" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431622196514430.jpg" data-original="data/brandlogo/1437431622196514430.jpg" alt="楼兰密语" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431098320240967.jpg" data-original="data/brandlogo/1437431098320240967.jpg" alt="必胜客" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431370729213687.jpg" data-original="data/brandlogo/1437431370729213687.jpg" alt="三元" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437432512022024124.jpg" data-original="data/brandlogo/1437432512022024124.jpg" alt="享爱." style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431595688289538.jpg" data-original="data/brandlogo/1437431595688289538.jpg" alt="三只松鼠" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431062768997274.jpg" data-original="data/brandlogo/1437431062768997274.jpg" alt="肯德基" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431609681889286.jpg" data-original="data/brandlogo/1437431609681889286.jpg" alt="口水娃" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437438523104074504.jpg" data-original="data/brandlogo/1437438523104074504.jpg" alt="美赞臣" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437437261557386149.jpg" data-original="data/brandlogo/1437437261557386149.jpg" alt="锐澳" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437433823734794032.gif" data-original="data/brandlogo/1437433823734794032.gif" alt="西门子" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431586427003983.jpg" data-original="data/brandlogo/1437431586427003983.jpg" alt="百草味" style="display: inline;">
												</a>
											</li>
											<li>
												<a href="#">
													<img width="100" height="40" <img src="${ctx}/statics/images/1437431645949723761.jpg" data-original="data/brandlogo/1437431645949723761.jpg" alt="西域美农" style="display: inline;">
												</a>
											</li>
										</ul>
										<div class="brand-btn">
											<a class="brand-left right_1" href="#">&lt;</a>
											<a class="brand-right left_1" href="#">&gt;</a>
										</div>
									</div>
								</div>
								<script type="text/javascript">
									Move(".left_1", ".right_1", ".yyyy_1", ".brand", "10");
								</script>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="${ctx}/statics/js/indexPrivate.min.js"></script>
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
										<div class="user-pic">
											<div class="user-pic-mask"></div>
											<img src="${ctx}/statics/images/people.gif">
										</div>
										<p>你好！请
											<a href="#">登录</a>|
											<a href="#">注册</a>
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
									<span class="ECS_CARTINFO"><form id="formCart" name="formCart" method="post" action="http://b2b2c.wygk.cn/flow.php">
	<span class="cart_num">0</span>
									<div class="sidebar-cart-box">
										<h3 class="sidebar-panel-header">
            <a href="#"><i class="cart-icon"></i><em class="title">购物车</em></a>
            <span class="close-panel"></span>
        </h3>
										<div class="cart-panel-main">
											<div class="cart-panel-content" style="height: 883px;">
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
							<li class="returnTop" style="display: list-item;">
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

					<div class="right-sidebar-panels animate-out" style="z-index: 1;">
						<h3 class="sidebar-panel-header">
                    <a href="#"><i class="bonus-icon"></i><em class="title">红包</em></a>
                    <span class="close-panel"></span>
                </h3>
						<div class="bonus-panel-main">
							<div class="bonus-panel-content" style="height: 933px;">
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

					<div class="ECS_CARTINFO right-sidebar-panels animate-out" style="z-index: 1;">
						<form id="formCart" name="formCart" method="post" action="http://b2b2c.wygk.cn/flow.php">
							<span class="cart_num">0</span>
							<div class="sidebar-cart-box">
								<h3 class="sidebar-panel-header">
            <a href="#"><i class="cart-icon"></i><em class="title">购物车</em></a>
            <span class="close-panel"></span>
        </h3>
								<div class="cart-panel-main">
									<div class="cart-panel-content" style="height: 883px;">
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

					<div class="right-sidebar-panels animate-out" style="z-index: 1;">
						<h3 class="sidebar-panel-header">
                	<a href="#"><i></i><em class="title">我的足迹</em></a>
                    <span class="close-panel"></span>
                </h3>
						<div class="sidebar-panel-main">
							<div class="sidebar-panel-content">
								<div class="history-panel">
									<ul>
										<li>
											<div class="p-img">
												<a target="_blank" href="#"><img src="${ctx}/statics/images/49_thumb_G_1437517210470.jpg" alt="安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装"></a>
											</div>
											<div class="p-name">
												<a target="_blank" href="#">安琦诺 夏装新品孕妇装 韩版休闲外出服喂奶衣套装</a>
											</div>
											<div class="p-comm"><span class="p-price main-color">¥128.0</span> </div>
										</li>
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
		<div class="pop-main pop-login" style="top: 258.5px;">
			<div class="pop-header"> <span>您尚未登录</span>
				<a class="pop-close" href="#"></a>
			</div>
			<div class="pop-con">
				<form name="formLogin" action="http://b2b2c.wygk.cn/user.php" method="post" onsubmit="return user_login();">
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
                    <img src="${ctx}/statics/images/captcha.php" alt="captcha" style="vertical-align: middle;cursor: pointer;" onclick="this.src=&#39;captcha.php?is_login=1&amp;&#39;+Math.random()">
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
			//点击用户图标弹出登录框
			$('.quick-login .quick-links-a,.quick-login .quick-login-a,.customer-service-online a').click(function() {
				$('.pop-login,.pop-mask').show();
			})
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
			<div class="footer-service">
				<div class="w1210">
					<ul class="list-service clearfix">
						<li>
							<a class="ic1" rel="nofollow" href="#"><i></i><strong>1小时快修服务</strong></a>
						</li>
						<li>
							<a class="ic2" rel="nofollow" href="#"><i></i><strong>7天无理由退货</strong></a>
						</li>
						<li>
							<a class="ic3" rel="nofollow" href="#"><i></i><strong>15天免费换货</strong></a>
						</li>
						<li>
							<a class="ic4" rel="nofollow" href="#"><i></i><strong>满150元包邮</strong></a>
						</li>
						<li>
							<a class="ic5" rel="nofollow" href="#"><i></i><strong>460余家售后网点</strong></a>
						</li>
					</ul>
				</div>
			</div>
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

						<p>友情链接：
							<a href="#">网软志成</a><span class="sep">|</span>
							<a href="#">阿里巴巴</a><span class="sep">|</span>
							<a href="#">百度</a><span class="sep">|</span>
							<a href="#">腾讯</a><span class="sep">|</span>
							<a href="#">网易</a><span class="sep">|</span>
							<a href="#">京东商城</a><span class="sep">|</span>
							<a href="#">天猫商城</a><span class="sep">|</span>
							<a href="#">支付宝</a><span class="sep">|</span>
							<a href="#">搜狐</a><span class="sep">|</span>
							<a href="#">优酷网</a><span class="sep">|</span>
							<a href="#">新浪</a><span class="sep">|</span>
							<a href="#">凤凰网</a><span class="sep">|</span>
							<a href="#">58同城</a><span class="sep">|</span>
							<a href="#">搜房网</a><span class="sep">|</span>
							<a href="#">世纪佳缘</a><span class="sep">|</span>
							<a href="#">央视网</a><span class="sep">|</span>
							<a href="#">新华网</a><span class="sep">|</span>
							<a href="#">苏宁易购</a>
						</p>
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
							</script><span id="cnzz_stat_icon_1000200717"><a href="#"><img border="0" hspace="0" vspace="0" <img src="${ctx}/statics/images/pic1.gif"></a></span>
							<script <img src="${ctx}/statics/images/z_stat.php" type="text/javascript"></script>
							<script <img src="${ctx}/statics/images/core.php" charset="utf-8" type="text/javascript"></script>
							<a href="#"><img src="${ctx}/statics/images/pa" height="16" border="0" alt="QQ"> 394223545</a>
							<a href="#"><img src="${ctx}/statics/images/online.ww" width="16" height="16" border="0" alt="淘宝旺旺">38306293</a>
						</p>
					</div>
				</div>
			</div>
		</div>
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
											<a target="blank" href="#"><img border="0" <img src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
											<span class="css2">38306293<a target="blank" href="#"><img border="0" <img src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>417586492</span>
											<font face="Verdana">
												<a target="blank" href="#"><img border="0" <img src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
											</font><span class="css2">657248708</span>
											<font face="Verdana">
												<a target="blank" href="#"><img border="0" <img src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
											</font><br><span class="css2">客服QQ:454882888</span>
											<font face="Verdana">
												<a target="blank" href="#"><img border="0" <img src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
											</font><span class="css2">394223545</span>
											<font face="Verdana">
												<a target="blank" href="#"><img border="0" <img src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
											</font><span class="css2">469648611</span>
											<font face="Verdana">
												<a target="blank" href="#"><img border="0" <img src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
											</font><span class="css2">314730679</span>
											<font face="Verdana">
												<a target="blank" href="#"><img border="0" <img src="${ctx}/statics/images/qqonline.gif" alt="网软志成客服为你服务"></a>
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
		<img src="${ctx}/statics/images/cron.php" alt="" style="width:0px;height:0px;">
		<script type="text/javascript">
			Ajax.call('api/okgoods.php', '', '', 'GET', 'JSON');
			$("img").lazyload({
				effect: "fadeIn",
				skip_invisible: true,
				failure_limit: 20
			});
		</script>
		<script type="text/javascript" src="${ctx}/statics/js/base.js"></script>
		<script language="JavaScript" src="js/347107.js" type="text/javascript" charset="utf-8"></script>
		<script language="javascript" src="js/url.js" charset="utf-8" type="text/javascript"></script>
		<script language="javascript" src="js/347107_code.js" charset="utf-8" type="text/javascript"></script>
		<style type="text/css">
			.kfpopupdiv img {
				display: inline;
			}
			
			.kfoutbox .kfbox .kf54kefuqqbottom img {
				margin: 0px;
				padding: 0px;
				clear: both;
				float: left;
			}
		</style>
		<link rel="stylesheet" href="${ctx}/statics/css/index.css"/>
		<style type="text/css">
			.kfoutbox {
				_position: absolute;
				right: 42px;
				kf54kefuqqtop: 0px;
			}
			
			.kfboxmenu {
				;
				display: none;
			}
			/**/
		</style>
		<div id="kfoutbox" class="kfoutbox" style="top: 2193px;">
			<div id="kfinbox" class="kfbox">
				<div class="kf54kefuqqtop"><img src="${ctx}/statics/images/top.gif">
					<div id="kfboxclose" class="kfboxclose">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
				</div>
				<div class="kf54kefuqqbg">
					<div class="kefu54kefunetgroup">
						<div style="text-align:center;"> <span style="line-height:1.5;"><strong>QQ咨询销售</strong></span> </div>
					</div>
					<div class="kefu54kefunetli">
						<div class="kefu54kefunetpicimgcenter">
							<a target="_blank" href="#"><img src="${ctx}/statics/images/101.gif" vspace="4" border="0" align="absmiddle" title="咨询QQ:394223545"></a>
						</div>
					</div>
					<div class="kefu54kefunetli">
						<div class="kefu54kefunetpicimgcenter">
							<a target="_blank" href="#"><img src="${ctx}/statics/images/101.gif" vspace="4" border="0" align="absmiddle" title="咨询QQ:38306293"></a>
						</div>
					</div>
					<div class="kefu54kefunetli">
						<div class="kefu54kefunetpicimgcenter">
							<a target="_blank" href="#"><img src="${ctx}/statics/images/101.gif" vspace="4" border="0" align="absmiddle" title="咨询QQ:469648611"></a>
						</div>
					</div>
					<div class="kefu54kefunetli">
						<div class="kefu54kefunetpicimgcenter">
							<a target="_blank" href="#"><img src="${ctx}/statics/images/101.gif" vspace="4" border="0" align="absmiddle" title="咨询QQ:454882888"></a>
						</div>
					</div>
					<div class="kefu54kefunetgroup">
						<div style="text-align:center;"> <span style="line-height:1.5;color:#E56600;"><strong>售前咨询热线</strong></span></div>
					</div>
					<div class="kefu54kefunetgroup">
						<p style="text-align:center;"> 020-34506590</p>
					</div>
					<div class="kefu54kefunetgroup">
						<div style="text-align:center;"> <span style="line-height:1.5;">020-34709708</span></div>
					</div>
					<div class="kefu54kefunetgroup">
						<div style="text-align:center;"> <span style="line-height:1.5;color:#E56600;"><strong>售后咨询热线</strong></span></div>
					</div>
					<div class="kefu54kefunetgroup">
						<div style="text-align:center;"> 020-34700400</div>
					</div>
					<div class="kefu54kefunetli">
						<div class="kefu54kefunetmycode" align="center"><img src="${ctx}/statics/images/3082681_pic.jpg"></div>
					</div>
					<div class="kefu54kefunetgroup">
						<div style="text-align:center;"> <span style="line-height:1.5;color:#E56600;"><span style="color:#000000;">扫一扫二维码</span><br></span>
							<p> <span style="line-height:1.5;color:#000000;">与我微信畅聊</span> </p>
						</div>
					</div>
					<div style="clear: both;"></div>
				</div>
				<div style="clear: both;"></div>
				<div class="kf54kefuqqbottom">
					<a href="#"><img src="${ctx}/statics/images/bottom.gif"></a>
				</div>
			</div>
			<div id="kfboxmenu" class="kfboxmenu kfboxmenuright"></div>
		</div>
		<link href="#">
		<style type="text/css">
			.kfpopupdiv {
				position: fixed;
				_position: absolute;
				visibility: visible;
				margin: 0 auto;
				top: 40%;
				left: 50%;
				left: 42% !important;
				clear: both;
				display: none;
			}
		</style>


		<script type="text/javascript" src="${ctx}/statics/js/arrive_notice.js"></script>
		<div class="tell-me-form" style="display: none; left: 701.5px; top: 295.5px;" id="tell-me-table">
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
						<tr <td width="30%" align="right">
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
								<input type="button" value="马上提交" onclick="tell_me1()" class="sure-btn">
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="elevator" style="visibility: visible;">
			<div class="elevator-floor" style="transform: scale(1); opacity: 1;">
				<a class="smooth" href="#">
					<b class="fs">1F</b>
					<em class="fs-name">家电</em>
					<i class="fs-line"></i>
				</a>
				<a class="smooth active" href="#">
					<b class="fs">2F</b>
					<em class="fs-name">数码</em>
					<i class="fs-line"></i>
				</a>
				<a class="smooth" href="#">
					<b class="fs">3F</b>
					<em class="fs-name">家居</em>
					<i class="fs-line"></i>
				</a>
				<a class="smooth" href="#">
					<b class="fs">4F</b>
					<em class="fs-name">服饰</em>
					<i class="fs-line"></i>
				</a>
				<a class="smooth" href="#">
					<b class="fs">5F</b>
					<em class="fs-name">个护</em>
					<i class="fs-line"></i>
				</a>
				<a class="smooth" href="#">
					<b class="fs">6F</b>
					<em class="fs-name">酒饮</em>
					<i class="fs-line"></i>
				</a>
				<a class="smooth" href="#">
					<b class="fs">7F</b>
					<em class="fs-name">母婴</em>
					<i class="fs-line"></i>
				</a>
				<a class="smooth" href="#">
					<b class="fs">8F</b>
					<em class="fs-name">食品</em>
				</a>
			</div>
		</div>
		<script type="text/javascript" src="${ctx}/statics/js/home_index.js"></script>
		<script type="text/javascript">
			$(".brand-con").hover(function() {
					var num = $(this).find("li").length;
					if(num > 10) {
						$(this).find(".brand-btn").fadeTo('fast', 0.4);
					}
				},
				function() {
					$(this).find(".brand-btn").fadeTo('fast', 0);
				})
		</script>
	</body>

</html>