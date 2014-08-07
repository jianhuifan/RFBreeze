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
						
					</div>
					<span id="aliasTitle">出货积分系统</span>
					<small>
						<i class="icon-double-angle-right"></i>
						<span id="actionName">信息统计</span>
					</small>
				</h1>
			</div>
			
			<div class="row-fluid">
				<div class="FWApp" id="appIndex">
					<!--@indexMgrGadget@
					{
						viewID:"viewIndex"
					}
					-->
					<div id="viewIndex">
						<!--$if(data){ -->
						<div class="span6 infobox-container">
							
							<div class="infobox infobox-orange2  ">
								<div class="infobox-chart">
									<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">￥${_}{data.tmoney}</span>
									<div class="infobox-content">历史总出货金额</div>
								</div>
							</div>
							<div class="infobox infobox-green  ">
								<div class="infobox-chart">
									<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">￥${_}{data.mmoney}</span>
									<div class="infobox-content">本月出货总金额</div>
								</div>
							</div>

							<div class="infobox infobox-blue2">
								<div class="infobox-chart">
									<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">${_}{data.tscores}</span>
									<div class="infobox-content">历史总积分数</div>
								</div>
							</div>
							<div class="infobox infobox-blue  ">
								<div class="infobox-chart">
									<span class="sparkline" data-values="196,128,202,177,154,94,100,170,224"></span>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">${_}{data.mscore}</span>
									<div class="infobox-content">本月总积分数</div>
								</div>
							</div>
							<div class="infobox infobox-red  ">
								<div class="infobox-icon">
									<i class="icon-book"></i>
								</div>
	
								<div class="infobox-data">
									<span class="infobox-data-number">${_}{data.mbatchout}</span>
									<div class="infobox-content">本月出货单数</div>
								</div>
							</div>
							<div class="infobox infobox-pink  ">
								<div class="infobox-icon">
									<i class="icon-group"></i>
								</div>

								<div class="infobox-data">
									<span class="infobox-data-number">${_}{data.mdls}</span>
									<div class="infobox-content">本月新增代理商</div>
								</div>
								<!-- <div class="stat stat-important">+4%</div> -->
							</div>

							<div class="space-6"></div>

							<div class="infobox infobox-green infobox-small infobox-dark">
								<div class="infobox-progress">
									<div class="easy-pie-chart percentage" data-percent="${_}{data.onepercent}" data-size="39">
										<span class="percent">${_}{data.onepercent}</span>
										%
									</div>
								</div>

								<div class="infobox-data">
									<div class="infobox-content">一级代理商</div>
									<div class="infobox-content">${_}{data.onelevel}</div>
								</div>
							</div>

							<div class="infobox infobox-blue infobox-small infobox-dark">
								<div class="infobox-progress">
									<div class="easy-pie-chart percentage" data-percent="${_}{data.twopercent}" data-size="39">
										<span class="percent">${_}{data.twopercent}</span>
										%
									</div>
								</div>

								<div class="infobox-data">
									<div class="infobox-content">二级代理商</div>
									<div class="infobox-content">${_}{data.twolevel}</div>
								</div>
							</div>

							<div class="infobox infobox-orange infobox-small infobox-dark">
								<div class="infobox-progress">
									<div class="easy-pie-chart percentage" data-percent="${_}{data.threepercent}" data-size="39">
										<span class="percent">${_}{data.threepercent}</span>
										%
									</div>
								</div>

								<div class="infobox-data">
									<div class="infobox-content">三级代理商</div>
									<div class="infobox-content">${_}{data.threelevel}</div>
								</div>
							</div>
						</div>
						<div class="vspace"></div>
						<div class="span6">
							<div class="widget-box">
								<div class="widget-header widget-header-flat widget-header-small">
									<h5>
										<i class="icon-signal"></i>
										代理商进货比例
									</h5>

									<!-- <div class="widget-toolbar no-border">
										<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
											本周积分
											<i class="icon-angle-down icon-on-right"></i>
										</button>

										<ul class="dropdown-menu dropdown-info pull-right dropdown-caret">
											<li class="active">
												<a href="#">This Week</a>
											</li>

											<li>
												<a href="#">Last Week</a>
											</li>

											<li>
												<a href="#">This Month</a>
											</li>

											<li>
												<a href="#">Last Month</a>
											</li>
										</ul>
									</div> -->
								</div>

								<div class="widget-body">
									<div class="widget-main">
										<div id="piechart-placeholder"></div>

										<div class="hr hr8 hr-double"></div>

										<div class="clearfix" id="J_tmp">
											<div class="grid3">
												<span class="grey">
													<i class="icon-facebook-sign icon-2x blue"></i>
													&nbsp; 一级
												</span>
												<h4 class="bigger pull-right" data-percent="${_}{data.omp}">￥${_}{data.onemmoney}</h4>
											</div>

											<div class="grid3">
												<span class="grey">
													<i class="icon-twitter-sign icon-2x purple"></i>
													&nbsp; 二级
												</span>
												<h4 class="bigger pull-right" data-percent="${_}{data.tmp}">￥${_}{data.twommoney}</h4>
											</div>

											<div class="grid3">
												<span class="grey">
													<i class="icon-pinterest-sign icon-2x red"></i>
													&nbsp; 三级
												</span>
												<h4 class="bigger pull-right" data-percent="${_}{data.thmp}">￥${_}{data.threemmoney}</h4>
											</div>
										</div>
									</div><!--/widget-main-->
								</div><!--/widget-body-->
							</div><!--/widget-box-->
						</div><!--/span-->
						<!--$} -->
					</div>
				</div>
			</div><!--/row-->

			<div class="hr hr32 hr-dotted"></div>
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
	seajs.use( ['privategadget/indexMgrGadget'],function(a) {			
		a.go("${S}",null,function(){
			$(function() {
				$('.easy-pie-chart.percentage').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
					var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
					var size = parseInt($(this).data('size')) || 50;
					$(this).easyPieChart({
						barColor: barColor,
						trackColor: trackColor,
						scaleColor: false,
						lineCap: 'butt',
						lineWidth: parseInt(size/10),
						animate: /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ? false : 1000,
						size: size
					});
				})
			
				$('.sparkline').each(function(){
					var $box = $(this).closest('.infobox');
					var barColor = !$box.hasClass('infobox-dark') ? $box.css('color') : '#FFF';
					$(this).sparkline('html', {tagValuesAttribute:'data-values', type: 'bar', barColor: barColor , chartRangeMin:$(this).data('min') || 0} );
				});
			
			  var placeholder = $('#piechart-placeholder').css({'width':'90%' , 'min-height':'150px'});

			  //计算比例

			  var omp = parseInt($("#J_tmp h4").eq(0).attr("data-percent"));
			  var tmp = parseInt($("#J_tmp h4").eq(1).attr("data-percent"));
			  var thmp = parseInt($("#J_tmp h4").eq(2).attr("data-percent"));
			  var data = [
				{ label: "一级代理商进货",  data: omp, color: "#68BC31"},
				{ label: "二级代理商进货",  data: tmp, color: "#2091CF"},
				{ label: "三级代理商进货",  data: thmp, color: "#DA5430"},

			  ]
			  function drawPieChart(placeholder, data, position) {
			 	  $.plot(placeholder, data, {
					series: {
						pie: {
							show: true,
							tilt:0.8,
							highlight: {
								opacity: 0.25
							},
							stroke: {
								color: '#fff',
								width: 2
							},
							startAngle: 2
						}
					},
					legend: {
						show: true,
						position: position || "ne", 
						labelBoxBorderColor: null,
						margin:[-30,15]
					}
					,
					grid: {
						hoverable: true,
						clickable: true
					}
				 })
			 }
			 drawPieChart(placeholder, data);
			
			 /**
			 we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			 so that's not needed actually.
			 */
			 placeholder.data('chart', data);
			 placeholder.data('draw', drawPieChart);
			
			  var $tooltip = $("<div class='tooltip top in hide'><div class='tooltip-inner'></div></div>").appendTo('body');
			  var previousPoint = null;
			
			  placeholder.on('plothover', function (event, pos, item) {
				if(item) {
					if (previousPoint != item.seriesIndex) {
						previousPoint = item.seriesIndex;
						var tip = item.series['label'] + " : " + item.series['percent']+'%';
						$tooltip.show().children(0).text(tip);
					}
					$tooltip.css({top:pos.pageY + 10, left:pos.pageX + 10});
				} else {
					$tooltip.hide();
					previousPoint = null;
				}
				
			 });
			
			})
		});
		window.FW = a;

		
	});
</script>

</body>
</html>