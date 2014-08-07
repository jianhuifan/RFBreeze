<%@ page import="com.breeze.framwork.databus.BreezeContext" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../allhead.jsp"/>
<jsp:include page="customerSession.jsp"/>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>有机菜</title>
	<link href="css/style.css" rel="stylesheet" media="screen">
	<link rel="stylesheet" type="text/css" href="css/jquery.jcarousel.css" />
	<link rel="stylesheet" type="text/css" href="css/jqzoom.css" />
	<script src="js/jquery-1.4.4.min.js" type="text/javascript"></script>
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<div class="header">
		<jsp:include page="customerAllHead.jsp"/>
	</div>
	<div class="content">
		<div class="subnav">
			<a href="#">首页</a>
			>
			<a href="#">个人中心</a>
			> 密码管理
		</div>
		<div class="left_order">
			<jsp:include page="customerAllLeftOrder.jsp"/>
		</div>
		<div class="right_order">
			<div class="FWApp" id="appModifyPasswordGadget">
				<!--@modifyPasswordGadget@
						{
						}
				-->
				<div id="viewModifyPassword">
					<div class="dingdan">
						<span>修改密码</span>
					</div>
					<%	
						String account = null;
						try{
							BreezeContext user = (BreezeContext)session.getAttribute("user");
							account = user.getContext("account").toString();
						}	catch(Exception e){
						}	
						
					%>
					<div class="cont">
						<div class="mima_xg">
							<ul>
								<li>
									<span>账户名：</span>
									<%=account%></li>
								<li>
									<span>旧密码：</span>
									<input type="password" name="" id="oldPassword" class="xingm"></li>
								<li>
									<span>新密码：</span>
									<input type="password" 
									id="newPassword"
									name="" class="xingm"></li>
								<li>
									<span>确认密码：</span>
									<input type="password"
									id="confirmPassword"
									 name="" class="xingm"></li>
								<li>
									<span></span>
									<input type="button" class="btn-bc" value="提交" onclick="FireEvent.fireEventSubmitModifyPassword()"></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>

		<div class="footer">
			<jsp:include page="customerAllFooter.jsp"/>
		</div>

		<script src="<%=this.getServletContext().getContextPath()%>/breeze/lib/js/jquery.js"></script>
		<script src="<%=this.getServletContext().getContextPath()%>/breeze/lib/js/sea.js"></script>
		<script src="<%=this.getServletContext().getContextPath()%>/config/config.jsp"></script>

		<!--page specific plugin scripts-->

		<script>
	seajs.config({base:"${B}"});
	seajs.use( [ 'gadget/cmsMgrNodeTreeGadget.js','privategadget/customerPageModifyPasswordGadget.js' ],function(a) {
				a.go("${S}",null,function(){
					
				});
				//将a全局赋值给fw  才能使用全局的事件
				window.FW = a;
			});
</script>
</body>
	</html>