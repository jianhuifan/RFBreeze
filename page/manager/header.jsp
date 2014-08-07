<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript">
	//罗哥，权限的代码，放在appClass.js里面的430行，请测试		
	var authorityData = {}; 
</script>
<div class="navbar">
	<div class="navbar-inner">
		<div class="container-fluid">
			<a href="#" class="brand">
				<small> <i class="icon-leaf"></i>
					${title}
				</small>
			</a>
			<!--/.brand-->

			<ul class="nav ace-nav pull-right">
				<li class="light-blue">
					<a href="../adminUserPage/logout.jsp"> <i class="icon-exclamation-sign"></i>
						${logout}
					</a>
				</li>
			</ul>
			<!--/.ace-nav-->
		</div>
		<!--/.container-fluid-->
	</div>
	<!--/.navbar-inner-->
</div>