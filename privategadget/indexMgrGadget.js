
define(function(require, exports, module) {
	var FW = require("../breeze/framework/js/BreezeFW");
	require("../breeze/framework/js/tools/DateTime")(FW);
	FW.register(
		{
			param:{
			},
			name:"indexMgrGadget",
			onCreate:function(){
				var _this = this;
				_this.API.doServer("queryTotleInfos","totle",{},function(code,data){
					if(code==0 && data){
						var totleData = {};
						[[{"mmoney":"2000"}],[{"mscore":"1820"}],[{"mbatchout":"1"}],[{"mdls":"4"}],[{"tmoney":"3000"}],[{"tscores":"1820"}],[{"onelevel":"2"}],[{"twolevel":"1"}],[{"threelevel":"1"}]]
						//本月进货总金额
						totleData.mmoney=data[0].mmoney || 0;
						//本月总积分数
						totleData.mscore=data[0].mscore || 0;
						//本月出货单数
						totleData.mbatchout=data[0].mbatchout || 0;
						//本月新增代理商
						totleData.mdls=data[0].mdls || 0;
						//历史总进货金额
						totleData.tmoney=data[0].tmoney || 0;
						//历史总积分数
						totleData.tscores=data[0].tscores || 0;
						//一级代理商
						totleData.onelevel=data[0].onelevel || 0;
						//二级代理商
						totleData.twolevel=data[0].twolevel || 0;
						//三级代理商
						totleData.threelevel=data[0].threelevel || 0;
						//计算各级代理商百分比
						var totleCountDls = parseInt(totleData.onelevel)+parseInt(totleData.twolevel)+parseInt(totleData.threelevel);
						totleData.onepercent = parseInt(totleData.onelevel*100/totleCountDls);
						totleData.twopercent = parseInt(totleData.twolevel*100/totleCountDls);
						totleData.threepercent = parseInt(totleData.threelevel*100/totleCountDls);

						//一级本月进货
						totleData.onemmoney = data[0].onemmoney || 0;
						//二级本月进货
						totleData.twommoney = data[0].twommoney || 0;
						//三级本月进货
						totleData.threemmoney = data[0].threemmoney || 0;
						//计算各级代理商本月进货百分比
						var totlemmoneyPer = parseInt(totleData.onemmoney)+parseInt(totleData.twommoney)+parseInt(totleData.threemmoney);
						totleData.omp = parseInt(totleData.onemmoney*100/totlemmoneyPer);
						totleData.tmp = parseInt(totleData.twommoney*100/totlemmoneyPer);
						totleData.thmp = parseInt(totleData.threemmoney*100/totlemmoneyPer);
						//显示视图
						_this.API.show(_this.param.viewID,totleData);
					}
				})
				
			},
			FireEvent:{
			},
			private:{
				privateBtnViewBatchoutlog:function(_dom,_data){
					window.open("batchoutlog.jsp?action=conEdit&cid="+_data.batchoutcid);
				}
			},
			TrigerEvent:{
				
			}
		}
	);
	return FW;
});

