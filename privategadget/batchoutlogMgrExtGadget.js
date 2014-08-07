
define(function(require, exports, module) {
	var FW = require("../breeze/framework/js/BreezeFW");
	require("../breeze/framework/js/tools/DateTime")(FW);
	require("../gadget/cmsMgrGadget"); //引入扩展函数
	FW.register(
		{
			param:{

			},
			name:"batchoutlogMgrExtGadget",
			extends:["cmsMgrGadget"],
			FireEvent:{
			},
			private:{
				
			},
			TrigerEvent:{
				
			}
		}
	);
	return FW;
});

