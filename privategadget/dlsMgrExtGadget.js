
define(function(require, exports, module) {
	var FW = require("../breeze/framework/js/BreezeFW");
	require("../breeze/framework/js/tools/DateTime")(FW);
	require("../gadget/cmsMgrGadget"); //引入扩展函数
	FW.register(
		{
			param:{
				btnForList:{
					dls:[{
						title:"结算积分",
						class:"btn btn-mini btn-success",
						html:"<i class='icon-cog bigger-120'> 结算</i>",
						onclick:"privateBtnSetScores"
					},{
						title:"编辑",
						authority:"modifyContent",
						class:"btn btn-mini btn-info",
						style:"display:none",
						html:" <i class='icon-edit bigger-120'> 编辑</i>",
						onclick:"privateBtnConEdit"
					},{
						title:"删除",
						authority:"deleteContent",
						class:"btn btn-mini btn-danger",
						style:"display:none",
						html:" <i class='icon-trash bigger-120'> 删除</i>",
						onclick:"privateBtnConDel"
					}]
				}
			},
			name:"dlsMgrExtGadget",
			extends:["cmsMgrGadget"],
			FireEvent:{
			},
			private:{
				privateMessConListOk: function(_data){
					// alert(FW.use().toJSONString(_data));
					for (var i = 0; i < _data.length; i++) {
						if(!parseInt(_data[i].scoresmonth)){
							this.API.find(".actionBtnForList .btn-success").eq(i).attr("disabled","disabled");
						}
					};
					
				},
				privateMessConEditOk: function(){
					var _this = this;
					_this.API.find(".f_password ._password_inp").attr("name","data.password2").attr("disabled","disabled").attr("type","password").next().html("<a class='btn btn-mini btn-info' id='modifyPsd' href='javascript:void(0)'>修改密码</a><a class='btn btn-mini btn-success' style='display:none' id='submitPsd' href='javascript:void(0)'>确认提交</a>");
					_this.API.find("#modifyPsd").click(function(){
						$(this).hide().next().show();
						_this.API.find(".f_password ._password_inp").removeAttr("disabled").attr("type","text").val("").focus();
					})
					_this.API.find("#submitPsd").click(function(){
						var psd = _this.API.find(".f_password ._password_inp").val();
						if(!psd) return;
						$(this).html("<i class='icon-spinner icon-spin orange bigger-125'> 修改中</i>");
						_this.API.doServer("modifyPassword","customer",{userid:_this.MY.cid,newPassword:psd},function(code,data){
							if(code==0){
								_this.API.find(".f_password ._password_inp").attr("disabled","disabled").next().html("密码已修改成功！");
							}else{
								$(this).html("修改失败，重新修改</i>");
							}
						})
						
					})
				},
				privateSubmitConAdd: function(_callback){
					var _this = this;
					//将表单转换成json
					var data = _this.API.find("#"+_this.param.formConAdd)[0].getDataAndCheck();
					var psd = data.password || "";
					if(psd) delete data.password;
					if(!data) return;
					//判断当前视图是否存在_this.MY.sonAlias，如果存在则为内容子alias操作
					//判断是否指定栏目
					if(_this.MY.sonAlias){
						var curNodeid = _this.MY.cid;
						var curAlias = _this.MY.sonAlias;
					}else{
						var curNodeid = _this.MY.nodeid;
						var curAlias = _this.MY.alias;
					}
					//转换data中有数组的情况为字符串
					_this.API.private("privateFormToData",_this.MY.contentDesc[curAlias],data);
					var _param = {alias:curAlias,param:data};
					var _serverName = _this.MY.serverName.aCon;
					data.nodeid = curNodeid || "0";  //指定栏目nodeid
					_this.API.doServer(_serverName,_this.MY.package,_param,function(code,data){
						if(code == 0){
							if(psd){
								_this.API.doServer("modifyPassword","customer",{userid:data[1],newPassword:psd},function(code,data2){
									if(code==0){
										_callback && _callback(data);
									}
								})
							}else{
								_callback && _callback(data);
							}
						}else{
							alert("内容添加失败！");
						}
					})
				},
				privateBtnSetScores:function(_dom,_data){
					if(_dom.attr("disabled") !== "disabled" && confirm("您确定要结算该用户积分吗？")){
						var _this = this;
						var param = {
							alias:_this.MY.alias,
							param:{
								cid:_data.cid,
								scoresmonth:"0"
							}
						};
						_this.API.doServer(_this.MY.serverName.mCon,_this.MY.package,param,function(code,data){
							if(code==0){
								alert("结算成功！");
								_this.API.private("privateShowConList");
							}
						})
					}
				}
			},
			TrigerEvent:{
				
			}
		}
	);
	return FW;
});

