
define(function(require, exports, module) {
	var FW = require("../breeze/framework/js/BreezeFW");
	require("../breeze/framework/js/tools/DateTime")(FW);
	require("../gadget/cmsMgrGadget"); //引入扩展函数
	FW.register(
		{
			param:{
				btnForList:{
					scoreslog:[{
						title:"查看进货记录",
						class:"btn btn-mini btn-success",
						html:"<i class='icon-search bigger-120'> 进货记录</i>",
						onclick:"privateBtnViewBatchoutlog"
					}]
				}
			},
			name:"scoreslogMgrExtGadget",
			extends:["cmsMgrGadget"],
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

