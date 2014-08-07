<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../allhead.jsp"/>
<jsp:include page="lang.jsp"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>${loginTitle}</title>
	<meta name="description" content="User login page" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!--basic styles-->
	<link href="<%=this.getServletContext().getContextPath()%>/page/manager/assets/css/bootstrap.min.css" rel="stylesheet" />	
	<link href="<%=this.getServletContext().getContextPath()%>/page/manager/assets/css/bootstrap-responsive.min.css" rel="stylesheet" />	
	<link rel="stylesheet" href="<%=this.getServletContext().getContextPath()%>/page/manager/assets/css/font-awesome.min.css" />	

	<!--[if IE 7]>	
	<link rel="stylesheet" href="<%=this.getServletContext().getContextPath()%>/page/manager/assets/css/font-awesome-ie7.min.css" />	
	<![endif]-->	

	<!--page specific plugin styles-->	
	<link rel="stylesheet" href="<%=this.getServletContext().getContextPath()%>/page/manager/assets/css/jquery-ui-1.10.3.custom.min.css" />

	<!--fonts-->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

	<!--ace styles-->
	<link rel="stylesheet" href="<%=this.getServletContext().getContextPath()%>/page/manager/assets/css/ace.min.css" />
	<link rel="stylesheet" href="<%=this.getServletContext().getContextPath()%>/page/manager/assets/css/ace-responsive.min.css" />
	<link rel="stylesheet" href="<%=this.getServletContext().getContextPath()%>/page/manager/assets/css/ace-skins.min.css" />



	<!--[if lt IE 9]>
	<link rel="stylesheet" href="<%=this.getServletContext().getContextPath()%>/page/manager/assets/css/ace-ie.min.css" />
	<![endif]-->

</head>
<body class="login-layout">
		
	<div>
		${loginDesc}
	</div>
	<div class="caption">
		<div  id="appDivId">			
			<div id="viewDataMain">
				<div class="main-container container-fluid">
					<div class="main-content">
						<div class="row-fluid">
							<div class="span12">
								<div class="login-container">
									<div class="row-fluid">
										<div class="center">
											<h3>
												<i class="icon-leaf green"></i>
												<span class="red">${cop}</span>
												<span class="white">${loginDesc2}</span>
											</h3>
											
										</div>
									</div>
									<div class="row-fluid">
										<div class="position-relative">
											<div id="login-box" class="login-box visible widget-box no-border">
												<div class="widget-body">
													<div class="widget-main">
														<h4 class="header blue lighter bigger">
															<i class="icon-coffee green"></i>
															请输入用户名和密码
														</h4>
														<div class="space-6"></div>
														<form class="FWApp" id="APP_login">
															<!--@userInfoGadget@
																{
																	directShowView:'view_userLogin',
																	loginServiceName:'adminLogin',
																	loginServicePackage:'admin',
																	loginSuccJumb:'${loginSuccJumb}'
																	
																}
															-->
															<fieldset id="view_userLogin">
																<label>
																	<span class="block input-icon input-icon-right">
																		<input type="text" class="span12" id="adminName" placeholder="Username" />
																		<i class="icon-user"></i>
																	</span>
																</label>

																<label>
																	<span class="block input-icon input-icon-right">
																		<input type="password" class="span12" id="adminPass" placeholder="Password" />
																		<i class="icon-lock"></i>
																	</span>
																</label>

																<div class="space"></div>

																<div class="clearfix">
																	<!-- <label class="inline">
																		<input type="checkbox" />
																		<span class="lbl"> Remember Me</span>
																	</label> -->

																	<a href="javascript:void(0)" onclick="FireEvent.fireLogin('adminName','adminPass')" class="width-35 pull-right btn btn-small btn-primary">
																		<i class="icon-key"></i>
																		Login
																	</a>
																</div>

																<div class="space-4"></div>
															</fieldset>
														</form>

														<!-- <div class="social-or-login center">
															<span class="bigger-110">Or Login Using</span>
														</div> -->

														<!-- <div class="social-login center">
															<a class="btn btn-primary">
																<i class="icon-facebook"></i>
															</a>

															<a class="btn btn-info">
																<i class="icon-twitter"></i>
															</a>

															<a class="btn btn-danger">
																<i class="icon-google-plus"></i>
															</a>
														</div> -->
													</div><!--/widget-main-->

													<!--div class="toolbar clearfix">
														<div>
															<a href="#" onclick="return false;" class="forgot-password-link">
																<i class="icon-arrow-left"></i>
																忘记密码
															</a>
														</div>
															
														<div>
															<a href="#" onclick="return false;" class="user-signup-link">
																用户注册
																<i class="icon-arrow-right"></i>
															</a>
														</div>
													</div-->
												</div><!--/widget-body-->
											</div><!--/login-box-->

											<div id="forgot-box" class="forgot-box widget-box no-border">
												<div class="widget-body">
													<div class="widget-main">
														<h4 class="header red lighter bigger">
															<i class="icon-key"></i>
															Retrieve Password
														</h4>

														<div class="space-6"></div>
														<p>
															Enter your email and to receive instructions
														</p>

														<form>
															<fieldset>
																<label>
																	<span class="block input-icon input-icon-right">
																		<input type="email" class="span12" placeholder="Email" />
																		<i class="icon-envelope"></i>
																	</span>
																</label>

																<div class="clearfix">
																	<button onclick="return false;" class="width-35 pull-right btn btn-small btn-danger">
																		<i class="icon-lightbulb"></i>
																		Send Me!
																	</button>
																</div>
															</fieldset>
														</form>
													</div><!--/widget-main-->

													<div class="toolbar center">
														<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
															Back to login
															<i class="icon-arrow-right"></i>
														</a>
													</div>
												</div><!--/widget-body-->
											</div><!--/forgot-box-->

											<div id="signup-box" class="signup-box widget-box no-border">
												<div class="widget-body">
													<div class="widget-main">
														<h4 class="header green lighter bigger">
															<i class="icon-group blue"></i>
															New User Registration
														</h4>

														<div class="space-6"></div>
														<p> Enter your details to begin: </p>

														<form>
															<fieldset>
																<label>
																	<span class="block input-icon input-icon-right">
																		<input type="email" class="span12" placeholder="Email" />
																		<i class="icon-envelope"></i>
																	</span>
																</label>

																<label>
																	<span class="block input-icon input-icon-right">
																		<input type="text" class="span12" placeholder="Username" />
																		<i class="icon-user"></i>
																	</span>
																</label>

																<label>
																	<span class="block input-icon input-icon-right">
																		<input type="password" class="span12" placeholder="Password" />
																		<i class="icon-lock"></i>
																	</span>
																</label>

																<label>
																	<span class="block input-icon input-icon-right">
																		<input type="password" class="span12" placeholder="Repeat password" />
																		<i class="icon-retweet"></i>
																	</span>
																</label>

																<label>
																	<input type="checkbox" />
																	<span class="lbl">
																		I accept the
																		<a href="#">User Agreement</a>
																	</span>
																</label>

																<div class="space-24"></div>

																<div class="clearfix">
																	<button type="reset" class="width-30 pull-left btn btn-small">
																		<i class="icon-refresh"></i>
																		Reset
																	</button>

																	<button onclick="return false;" class="width-65 pull-right btn btn-small btn-success">
																		Register
																		<i class="icon-arrow-right icon-on-right"></i>
																	</button>
																</div>
															</fieldset>
														</form>
													</div>

													<div class="toolbar center">
														<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
															<i class="icon-arrow-left"></i>
															Back to login
														</a>
													</div>
												</div><!--/widget-body-->
											</div><!--/signup-box-->
										</div><!--/position-relative-->
									</div>
								</div>
							</div><!--/.span-->
						</div><!--/.row-fluid-->
					</div>
				</div><!--/.main-container-->
			</div>
		</div>
		
	</div>

<!--/.main-container-->


<!-- JavaScript plugins (requires jQuery) -->
<script src="${B}breeze/lib/js/jquery.js"></script>
<script src="${B}breeze/lib/js/sea.js"></script>

<!-- wgfly breeze -->

	<script>
		seajs.config({base:"${B}"});
		seajs.use( [ 'gadget/userInfoGadget' ],function(a) {
			a.go("${S}");
			//将a全局赋值给fw  才能使用全局的事件
			window.FW = a;
		});
		document.onkeydown=function(event){ 
	        e = event ? event :(window.event ? window.event : null); 
	        if(e.keyCode==13){ 
	            //执行的方法  
	            var adminName = $("#adminName").val();
	            var adminPass = $("#adminPass").val();
	            FW.trigerEvent("trigerLogin",adminName,adminPass);
	        } 
	    }

	</script>
	<script type="text/javascript">
		function show_box(id) {
		 $('.widget-box.visible').removeClass('visible');
		 $('#'+id).addClass('visible');
		}
	</script>

</body>
</html>