<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<jsp:include page="../allhead.jsp"/>
<jsp:include page="../manager/lang.jsp"/>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>积分查询登陆</title>
	<style type="text/css">
	.FWApp{
		display: none;
	}
	</style>
</head>

<body>

	<div class="FWApp" id="APP_traning">
		<!--@userInfoGadget@
			{
			}
		-->
		<div id="view_userNotLogin">
			<div class="con_right">
				<div class="tit">
					<span class="denglu">会员登录</span>
				</div>
				<div class="cont">
					<ul>
						<li>
							<input type="text" name="fname" id="account" placeholder="请输入帐号" class="lo_ip"/>
						</li>
						<li>
							<input type="password" name="lname" id="password" placeholder="请输入密码" class="lo_ip"></li>
						<li>
							<a href="#">忘记密码?</a>
						</li>
						<li>
							<input type="button" class="loginbtn" onClick="FireEvent.fireLogin('account','password')" value="登陆"></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="view_userLogin">
			<!--$if(data){-->
				您的历史积分：${_}{data.scorestotle}<br/>
				您的可用积分：${_}{data.scoresmonth}
			<!--$} -->
		</div>
	</div>

	<script src="${B}breeze/lib/js/jquery.js"></script>
	<script src="${B}breeze/lib/js/sea.js"></script>
	<script src="${B}config/config.jsp"></script>

	<script>
	seajs.config({base:"${B}"});
	seajs.use( ['gadget/userInfoGadget.js'],function(a) {	
		a.go("${S}");
		window.FW = a;
	});
</script>
</body>
</html>