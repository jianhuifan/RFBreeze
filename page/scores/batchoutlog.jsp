<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="../manager/bgPower.jsp"/>
<jsp:include page="../allhead.jsp"/>
<jsp:include page="../manager/lang.jsp"/>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>${title}</title>
	<meta name="description" content="User login page" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- cssAssets -->
	<jsp:include page="../manager/cssAssets.jsp"/>
	<!-- /cssAssets -->
	<style type="text/css">
		.batchoutlog_conAdd .f_opertime{
			display: none!important;
		}
		._remark_tex{
			width: 400px!important;
			height: 100px;
		}
	</style>
</head>
<body class="skin-1">

<!-- header -->
<jsp:include page="../manager/header.jsp"/>
<!-- /header -->

<div class="main-container container-fluid">
	<!-- leftMenu -->
	<jsp:include page="../manager/leftMenu.jsp"/>
	<!-- /leftMenu -->

	<!--PAGE CONTENT BEGINS HERE-->
	<!-- ====================== -->
	<div class="main-content">
		<div id="breadcrumbs" class="breadcrumbs">
			<ul class="breadcrumb">
				<li> <i class="icon-home home-icon"></i>
					<a href="javascript:void(0);">${pre_welcome}</a>
					<span class="divider"> <i class="icon-angle-right arrow-icon"></i>
					</span>
				</li>
				<li class="active">
					${welcome}
				</li>
			</ul>
			<!--.breadcrumb-->

			<div id="nav-search" class="nav-search">
				<form class="form-search">
					<span class="input-icon">
						<input type="text" autocomplete="off" id="nav-search-input" class="input-small nav-search-input" placeholder="Search ...">
						<i class="icon-search nav-search-icon"></i>
					</span>
				</form>
			</div>
			<!--#nav-search-->
		</div>
		
		<div class="page-content clearfix">
			<div class="page-header position-relative">
				<h1 id="pageH1" style="display:none;">
					<div class="pull-right" id="btnAction">
						<div class="btn-toolbar">
							<a onClick="FW.trigerEvent('trigerContentAdd')" class="btn btn-success btn-small">
								<i class="icon-plus"></i>
								录入进货记录
							</a>
						</div>
					</div>
					<span id="aliasTitle">栏目操作</span>
					<small>
						<i class="icon-double-angle-right"></i>
						<span id="actionName">内容列表</span>
					</small>
				</h1>
			</div>
			
			<div>
				<div id="tabSonAlias" style="display:none; margin-bottom:30px;">
					<a id="btnAddSonAlias" class="pull-right btn btn-mini btn-info" href="javascript:void(0)" style="display:none; margin:10px 10px 0 0; position:relative; z-index:2">
						<i class="icon-plus"></i> 单条添加
					</a>
					<ul class="nav nav-tabs padding-18" style="height:33px;">
						<li class="active">
							<a href="javascrpt:void(0)" data-toggle="tab">基本信息</a>
						</li>
					</ul>
				</div>
				<div class="FWApp " id="cmsMgrExtGadget">
					<!--@batchoutlogMgrExtGadget@
					{
						alias:"batchoutlog"
					}
					-->
					<div id="viewContentList">
						<form id="formContentList" class="form-horizontal clearfix">
						</form>
					</div>
					<div id="viewContentAdd">
						<form id="formContentAdd" class="form-horizontal clearfix">
						</form>
					</div>
					<div id="viewContentPLAdd">
						<form id="formContentPLAdd" class="form-horizontal clearfix">
						</form>
					</div>
					<div id="viewContentEdit">
						<form id="formContentEdit" class="form-horizontal clearfix">
						</form>
					</div>
					<div id="viewClassAdd">
						<form id="formClassAdd" class="form-horizontal clearfix">
						</form>
					</div>
					<div id="viewClassEdit">
						<form id="formClassEdit" class="form-horizontal clearfix">
						</form>
					</div>
				</div>
				<div id="submitBtn" style="padding:20px 0 0 180px; border-top:1px solid #E2E2E2; display:none;">
					<a href="javascript:void(0)" onClick="FW.trigerEvent('trigerSubmit')" class="btn btn-info">
						<i class="icon-ok bigger-110"></i>
						确认提交
					</a>
					&nbsp; &nbsp; &nbsp;
					<a href="javascript:void(0)" onClick="FW.trigerEvent('trigerGoBack')" class="btn">
						<i class="icon-undo bigger-110"></i>
						返回列表
					</a>
				</div>
			</div>
		</div>

	</div>
	<!-- ====================== -->
	<!--PAGE CONTENT ENDS HERE-->

</div>
<!--/.main-container-->

<!-- footer -->
<jsp:include page="../manager/footer.jsp"/>
<!-- /footer -->

<!-- wgfly breeze -->
<script>
	seajs.config({base:"${B}"});
	seajs.use( ['privategadget/batchoutlogMgrExtGadget'],function(a) {			
		a.go("${S}");
		window.FW = a;
	});
</script>

</body>
</html>