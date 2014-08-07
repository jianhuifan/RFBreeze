<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<jsp:include page="../allhead.jsp"/>
<jsp:include page="../manager/lang.jsp"/>
<%	
	if(session.getAttribute("user")==null)
	{
		out.println("<script>alert('请登录!');location.href='customerLogin.jsp'</script>");
	}
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>查看积分</title>
</head>

<body>

	<!-- <div class="FWApp" id="APP_traning">
		<!--@userInfoGadget@
			{
			  directShowView:"mainView",	
			  loginSuccJumb:"http://www.baidu.com",
			  getinfoServicePackage:"scores",
			  loginServicePackage:"scores"
			}
		-->
		<div id="mainView">
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
	</div>
 -->
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