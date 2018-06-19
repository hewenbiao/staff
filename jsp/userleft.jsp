<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="user-left">
				<div class="sideNav">
					<h1><a href="#"><span>yiren</span></a></h1>
					<div class="userInfo">
						<div class="myInfo clearfix">
							<div class="photo">
								<div class="mask"></div>
								<img id="headImagePath" src="${ctx}/statics/images/people.gif" height="80" width="80">
							</div>
							<div class="info-op">
								<ul>
									<li class="info-op1"><i></i>
										<a href="user.php?act=profile">修改资料</a>
									</li>
									<li class="info-op2"><i></i>
										<a href="user.php?act=logout">安全退出</a>
									</li>
									<li class="info-op3"><i></i>
										<a href="javascript:void(0);" title="会员等级">钻石会员</a>
									</li>
								</ul>
							</div>
						</div>
						<p class="cost"></p>
					</div>
				</div>

				<div class="navList">
					<div class="func func1 clearfix">
						<p class="title"><i></i><span>会员中心</span></p>
						<a href="user.php" class="item "><span>欢迎页</span><i></i></a>
						<a href="user.php?act=profile" class="item curs"><span>用户信息</span><i></i></a>
						<a href="security.php" class="item "><span>账户安全</span><i></i></a>
						<a href="user.php?act=address_list" class="item "><span>收货地址</span><i></i></a>
						<a href="user.php?act=account_log" class="item "><span>资金管理</span><i></i></a>
						<a href="user.php?act=bonus" class="item "><span>我的红包</span><i></i></a>

						<a href="user.php?act=vc_login" class="item ">储值卡充值<i></i></a>
					</div>
					<div class="func func2 clearfix">
						<p class="title"><i></i><span>交易中心</span></p>
						<a href="user.php?act=order_list" class="item "><span>我的订单</span><i></i></a>
						<a href="user.php?act=back_list" class="item "><span>退款/退货及维修</span><i></i></a>
						<a href="user.php?act=my_comment" class="item "><span>商品评价/晒单</span><i></i></a>
						<a href="user.php?act=collection_list" class="item "><span>商品收藏</span><i></i></a>
						<a href="user.php?act=follow_shop" class="item " title="关注的店铺"><span>店铺关注</span><i></i></a>
						<a href="user.php?act=auction_list" class="item "><span>我的竞拍</span><i></i></a>
						<a href="user.php?act=tg_login" class="item "><span>提货券入口</span><i></i></a>
						<a href="user.php?act=tg_order" class="item "><span>我的提货</span><i></i></a>
					</div>
					<div class="func func3 clearfix">
						<p class="title"><i></i><span>服务中心</span></p>
						<a href="user.php?act=booking_list" class="item "><span>缺货登记</span><i></i></a>
						<a href="user.php?act=message_list" class="item "><span>我的留言</span><i></i></a>
						<a href="user.php?act=tag_list" class="item " style="display:none"><span>我的标签</span><i></i></a>
						<a href="user.php?act=affiliate" class="item "><span>我的推荐</span><i></i></a>

						<a href="apply_index.php" class="item"><span>我要开店</span><i></i></a>
					</div>
				</div>
			</div>