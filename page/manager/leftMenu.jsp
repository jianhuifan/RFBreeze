
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<a class="menu-toggler" id="menu-toggler" href="#">
	<span class="menu-text"></span>
</a>
<div class="sidebar" id="sidebar">
	<div class="sidebar-shortcuts" id="sidebar-shortcuts">
		<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
			<button class="btn btn-small btn-success"> <i class="icon-signal"></i>
			</button>

			<button class="btn btn-small btn-info"> <i class="icon-pencil"></i>
			</button>

			<button class="btn btn-small btn-warning">
				<i class="icon-group"></i>
			</button>

			<button class="btn btn-small btn-danger">
				<i class="icon-cogs"></i>
			</button>
		</div>

		<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
			<span class="btn btn-success"></span>

			<span class="btn btn-info"></span>

			<span class="btn btn-warning"></span>

			<span class="btn btn-danger"></span>
		</div>
	</div>
	<!--#sidebar-shortcuts-->

	<ul class="nav nav-list">
		<li>
			<a href="${B}page/manager/channelMgr.jsp?norole=true">
				<i class="icon-bar-chart"></i>
				<span class="menu-text">数据模型管理</span>
			</a>
		</li>
		<li>
			<a href="${B}page/scores/index.jsp?norole=true">
				<i class="icon-dashboard"></i>
				<span class="menu-text">统计信息首页</span>
			</a>
		</li>
		<li>
			<a href="${B}page/scores/dllevel.jsp?norole=true">
				<i class="icon-cogs"></i>
				<span class="menu-text">代理级别管理</span>
			</a>
		</li>
		<li>
			<a href="${B}page/scores/dls.jsp?norole=true">
				<i class="icon-group"></i>
				<span class="menu-text">代理商管理<span class="badge badge-primary ">4</span></span>
			</a>
		</li>
		<li>
			<a href="${B}page/scores/batchoutlog.jsp?norole=true">
				<i class="icon-edit"></i>
				<span class="menu-text">
					出货记录管理
					<span class="badge badge-transparent tooltip-error" title="" data-original-title="在这里录入出货信息">
						<i class="icon-warning-sign red bigger-130"></i>
					</span>
				</span>
			</a>
		</li>
		<li>
			<a href="${B}page/scores/scoreslog.jsp?norole=true">
				<i class="icon-list-alt"></i>
				<span class="menu-text">积分记录核对</span>
			</a>
		</li>
		<!-- <li actionNamea="查询角色权限@cms.queryContent" style="display:none~;">
			<a href="#" class="dropdown-toggle">
				<i class="icon-puzzle-piece"></i>
				<span class="menu-text">权限设置管理</span>
				<b class="arrow icon-angle-down"></b>
			</a>
			<ul class="submenu">
				<li actionNamea="查询角色权限@cms.queryContent" style="display:none~;">
					<a href="${B}page/manager/CMSMgr.jsp?alias=roles">
						<i class="icon-double-angle-right"></i>
						角色权限管理
					</a>
				</li>
				<li  actionNamea="查询权限定义@cms.queryContent" style="display:none~;">
					<a href="${B}page/manager/CMSMgr.jsp?alias=action">
						<i class="icon-double-angle-right"></i>
						权限定义管理
					</a>
				</li>
			</ul>
		</li> -->
	</ul>
	<!--/.nav-list-->

	<div class="sidebar-collapse" id="sidebar-collapse">
		<i class="icon-double-angle-left"></i>
	</div>
</div>