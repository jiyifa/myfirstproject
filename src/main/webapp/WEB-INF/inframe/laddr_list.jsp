<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0137)https://mail.qq.com/cgi-bin/laddr_list?sid=ure_pvIkstSwo2E7&operate=view&t=contact&view=normal&loc=frame_html,,,23#stattime=1516558074287 -->
<html>
	<head>
		<base href="${pageContext.request.contextPath }/"/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script>
			document.domain = "mail.qq.com";
			function getTop() {
				var f = arguments.callee,
					w;
				!(f.execption) && (f.execption = "");
				if(!f.t) {
					try {
						w = window;
						f.t = w != parent ? (parent.getTop ? parent.getTop() : parent.parent.getTop()) : w;
					} catch(e) {
						f.t = reTryGetTop();
						f.execption = e.message;
					}
				}
				return f.t;
			}

			function reTryGetTop() {
				var _oWin = window,
					_oWinParent = parent;
				try {
					while(_oWin != _oWinParent) {
						_oWin = _oWinParent;
						_oWinParent = _oWinParent.parent;
					}
				} catch(e) {
					ossLogForSetFrame.getTopException = true;
				}
				return _oWin;
			};
			try {
				window.top = getTop();
			} catch(e) {
				eval("var top=getTop();");
			}
			var gsUsed = "83";
			var g_uin = "3261486093";
			window == getTop() && document.write('<script src="https://rescdn.qqmail.com/zh_CN/htmledition/js/webp/all3ae95f.js"></' + 'script>');
			(getTop().initPageEvent || function() {})(window);
		</script>
		<meta name="save" content="history">
		<title>QQ邮箱 - 通讯录</title>
		<link rel="stylesheet" type="text/css" href="css/comm2010392e89.css">
		<link rel="stylesheet" type="text/css" href="css/getcss.css">
		<link rel="stylesheet" type="text/css" id="contactStyle" href="css/contacts201324e6b9.css">
	</head>

	<body class="widescreen">
		<script type="text/javascript">
			getTop().switchFolder("folder_");

			function onpageresize() {
				if(document.body.clientWidth > 1003) {
					!getTop().hasClass(document.body, "widescreen") &&
						getTop().addClass(document.body, "widescreen");
				} else {
					getTop().hasClass(document.body, "widescreen") &&
						getTop().rmClass(document.body, "widescreen");
				}
			}
			onpageresize();
		</script>
		<div id="out" class="contacts" ui-type="outter">
			<div id="bar" class="panel_fixed" style="">
				<div ui-type="nav">
					<div class="nav_list toolbg toolbgline toolheight">
						<div class="search">
							<form><input kd="nav_keyword" name="keyword" id="keyword" autocomplete="off" class="txt_search" type="text" default="搜索全部联系人" onfocus="if(this.placeholder == &#39;搜索全部联系人&#39;){  this.placeholder = &#39;&#39;;}this.parentNode.className=&#39;focus_search&#39;;" onblur="if(this.value == &#39;&#39;){this.placeholder = &#39;搜索全部联系人&#39;;}this.parentNode.className=&#39;&#39;;" placeholder="搜索全部联系人" _has_placeholder="1">
								<a ck="nav_search" href="javascript:;" class="btn_search btn_gray" title="搜索"><em class="ico_search"></em></a>
							</form>
						</div>
						<div class="tool">
							<a href="javascript:;" ck="nav_create" class="btn_add btn_blue btn_space" title="添加联系人"><em class="ico_add"></em></a>
							<a href="javascript:;" ck="nav_sync" class="btn_mobile btn_gray btn_space" title="在手机中同步联系人"><em class="ico_mobile"></em></a>
							<a href="javascript:;" ck="nav_tool" class="btn_gray btn_tool">工具<em class="ico_dropdowm"></em></a>
						</div>
					</div>
					<div class="nav_mask"></div>
				</div>
			</div>
			<div id="group" class="panel_groups" style="margin-top: 0px;">
				<div class="mysidebar">
					<h3 class="groups_default"><a class="f_size right normal" ck="group_create" href="javascript:;">新建组</a>通讯录</h3>
					<ul class="navlist_min">
						<li class="fn">
							<a href="https://mail.qq.com/cgi-bin/laddr_list?sid=ure_pvIkstSwo2E7&amp;operate=view&amp;t=contact&amp;view=normal">全部(<span ui-type="groupcnt" data-id="0" class="inline_block">0</span>)</a>
						</li>
					</ul>
					<h3>其他联系人</h3>
					<ul class="navlist_min">
						<li class="fs">
							<a href="https://mail.qq.com/cgi-bin/laddr_list?sid=ure_pvIkstSwo2E7&amp;operate=view&amp;t=contact&amp;view=other">历史联系人(<span ui-type="groupcnt" data-id="-110" class="inline_block">0</span>)</a>
						</li>
					</ul>
					<h4>QQ好友</h4>
					<ul class="navlist_min navlist_qq">
						<li class="fs">
							<a href="https://mail.qq.com/cgi-bin/laddr_list?sid=ure_pvIkstSwo2E7&amp;operate=view&amp;t=contact&amp;view=qq&amp;groupid=1000000"><span ui-type="grouptitle">我的好友</span>(<span ui-type="groupcnt" data-type="normal" data-id="1000000" class="inline_block">3</span>)</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="info" ui-type="info" class="panel_info settingtable qqshowbd" style="display:none"></div>
			<div id="list" class="panel_list " style="">
				<h2>全部</h2>
				<ul ui-type="list">
					<div ui-type="innerlist">
						<li ui-type="column-header" class="column_header" data-type="normal"><label class="list_select" ck="list_fake_check" for="cb_all"><input ck="list_select_all" data-type="normal" type="checkbox" ui-type="checkall" class="cb" value="" md="setCheckValue"></label><span class="name tf"><span class="tf" ck="list_sort" data-sorttype="name" data-type="normal">姓名<span class="ico_sort_down">↓</span></span>
							</span><span class="email tf"><span class="pointer" ck="list_sort" data-sorttype="mail" data-type="normal">邮箱<span class="ico_sort_down">↓</span></span>
							</span><span class="mobile tf"><span class="pointer" ck="list_sort" data-sorttype="tel" data-type="normal">电话<span class="ico_sort_down">↓</span></span>
							</span><span class="groups tf"><span class="pointer" ck="list_sort" data-sorttype="group" data-type="normal">分组<span class="ico_sort_down">↓</span></span>
							</span>
						</li>
						<li ui-type="column-empty" class="empty">你还没有联系人信息，
							<a ck="list_create" data-groupid="">添加一个吧</a>
						</li>
					</div>
				</ul>
			</div>
			<div id="search" class="panel_list" style="display:none;"></div>
			<div id="con" class="panel_edit settingtable qqshowbd" style="display: none;">
				<div class="panel_wrapper settingtable">
					<div class="panel_edit_inner">
						<ul>
							<li ui-type="column" class="column_first"><span class="caption tf"><a href="javascript:;" class="avator"><img ui-type="avator" data-id="" data-empty="1" class="" width="40" height="40" src="./male.gif" ck="addr_faceUpload"></a></span>
								<div class="column_value"><span class="name_combined"><input ui-type="input" tabindex="1" type="text" name="oName" default="姓名" value="" class="txt_name txt" placeholder="姓名" _has_placeholder="1"><a class="column_action" href="javascript:;" ck="name_split"><em class="ico_name_seperate"></em></a></span><span class="name_seperated"><input ui-type="input" tabindex="1" type="text" name="oFamilyName" default="姓氏" value="" class="txt_name txt_name_first txt" placeholder="姓氏" _has_placeholder="1"><input ui-type="input" tabindex="1" type="text" name="oGivenName" default="名字" value="" class="txt_name txt_name_last txt" placeholder="名字" _has_placeholder="1"><a class="column_action" href="javascript:;" ck="split_close"><em class="ico_name_combine"></em></a></span></div><input ui-type="input" type="hidden" name="sId" value="" placeholder="" _has_placeholder="1"> <input ui-type="input" type="hidden" name="sItemType" value="" placeholder="" _has_placeholder="1"> </li>
							<li ui-type="column" token="oEmail"><label ck="addr_editlabel" class="caption tf" ui-type="editmenu" data-menu="个人邮箱,工作邮箱" _has_editlabel="1"><span>个人邮箱</span><em class="ico_select_s"></em></label>
								<div class="column_value"><input type="text" class="txt" ui-type="input" tabindex="1" data-type="5" name="oEmail" default="邮箱地址" value="" placeholder="邮箱地址" _has_placeholder="1">
									<a ck="addr_add" class="column_action" href="javascript:;" hidefocus=""><em class="ico_column_add pointer"></em></a>
								</div>
							</li>
							<li ui-type="column" token="oTel"><label ck="addr_editlabel" class="caption tf" ui-type="editmenu" data-menu="手机号码,家庭号码,工作号码" _has_editlabel="1"><span>手机号码</span><em class="ico_select_s"></em></label>
								<div class="column_value"><input type="text" class="txt" ui-type="input" tabindex="1" data-type="4097" name="oTel" default="电话号码" value="" placeholder="电话号码" _has_placeholder="1">
									<a ck="addr_add" class="column_action" href="javascript:;" hidefocus=""><em class="ico_column_add pointer"></em></a>
								</div>
							</li>
							<li ui-type="column" token="oAdr" class="column_adr"><label ck="addr_editlabel" class="caption tf" ui-type="editmenu" data-menu="家庭地址,工作地址" _has_editlabel="1"><span>家庭地址</span><em class="ico_select_s"></em></label>
								<div class="column_value"><input type="text" class="addr_country txt" ui-type="input" tabindex="1" name="sCountry" default="国家" data-type="1" value="" placeholder="国家" _has_placeholder="1"><input type="text" class="addr_province txt" ui-type="input" tabindex="1" name="sProvince" default="省份" value="" placeholder="省份" _has_placeholder="1"><input type="text" class="addr_city txt" ui-type="input" tabindex="1" name="sCity" default="城市" value="" placeholder="城市" _has_placeholder="1">
									<a ck="addr_add" class="column_action" href="javascript:;" hidefocus=""><em class="ico_column_add pointer"></em></a>
								</div>
								<div class="column_value" style="padding-top:6px;"><input type="text" class="addr_street txt" ui-type="input" tabindex="1" name="sStreet" default="街道" value="" placeholder="街道" _has_placeholder="1"><input type="text" class="addr_postcode txt" ui-type="input" tabindex="1" name="sPostcode" default="邮政编码" value="" placeholder="邮政编码" _has_placeholder="1"></div>
							</li>
							<li ui-type="column" class="column_birthday"><label ck="addr_editlabel" ui-type="edit" class="caption tf" _has_editlabel="1"><span>生日</span></label>
								<div class="column_value"><input type="text" class="txt" ui-type="input" tabindex="1" name="oBirthday" onfocus="QMContact.msg(&#39;msg:COM_CALENDAR&#39;, {oDom:this,sFormat:&#39;YYYY-MM-DD&#39;,sVal:this.value});" onblur="QMContact.msg(&#39;msg:COM_CALENDAR_HIDE&#39;)" default="年-月-日" value="" placeholder="年-月-日" _has_placeholder="1"></div>
							</li>
							<li ui-type="column" token="oIM"><label ck="addr_editlabel" class="caption tf" ui-type="editmenu" data-menu="QQ,微信,MSN,Google Talk" _has_editlabel="1"><span>QQ</span><em class="ico_select_s"></em></label>
								<div class="column_value"><input type="text" class="txt" ui-type="input" tabindex="1" data-formatted="1" name="oIM" default="帐号" value="" placeholder="帐号" _has_placeholder="1">
									<a ck="addr_add" class="column_action" href="javascript:;" hidefocus=""><em class="ico_column_add pointer"></em></a>
								</div>
							</li>
							<li ui-type="column" token="oOrg" class="column_job"><label ck="addr_editlabel" class="caption tf" ui-type="edit" _has_editlabel="1"><span>工作</span></label>
								<div class="column_value"><input type="text" class="job_company txt" ui-type="input" tabindex="1" name="oOrg" default="公司" value="" placeholder="公司" _has_placeholder="1"><input type="text" class="job_department txt" ui-type="input" tabindex="1" name="sOrg2" default="部门" value="" placeholder="部门" _has_placeholder="1"><input type="text" class="job_position txt" ui-type="input" tabindex="1" name="sTitle" default="职位" value="" placeholder="职位" _has_placeholder="1">
									<a ck="addr_add" class="column_action" href="javascript:;" hidefocus=""><em class="ico_column_add pointer"></em></a>
								</div>
							</li>
							<li ui-type="column" ui-subtype="group" class="column_groups"><label class="caption tf" style="cursor:default;" _has_editlabel="1">分组</label>
								<div class="column_value">
									<a ck="addr_group_add" class="group_item group_add" href="javascript:;" title="选择分组"><em class="ico_column_add"></em></a>
								</div>
							</li>
							<li ui-type="column" token="oCustom"><label ck="addr_editlabel" class="caption tf" ui-type="edit" _has_editlabel="1"><span>自定义</span></label>
								<div class="column_value"><input type="text" class="txt" ui-type="input" tabindex="1" name="oCustom" default="自定义信息" value="" placeholder="自定义信息" _has_placeholder="1">
									<a ck="addr_add" class="column_action" href="javascript:;" hidefocus=""><em class="ico_column_add pointer"></em></a>
								</div>
							</li>
							<li ui-type="column"><label ck="addr_editlabel" class="caption tf" ui-type="edit" _has_editlabel="1"><span>备注</span></label>
								<div class="column_value"><textarea class="txt_more txt" ui-type="input" tabindex="1" name="oNote" default="备注" placeholder="备注" _has_placeholder="1"></textarea></div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/qmcontact32a2d6.js"></script>
		<script type="text/javascript">
			var goListData = {
				oList: [],
				nCnt: +"0"
			};
			var goGroupData = {
				oOther: {
					nTotalCnt: +"0",
					oList: []
				},
				oNormal: {
					oList: [],
					nTotalCnt: +"0"
				},
				oDomain: {
					oList: []
				},
				oQQ: {
					oList: [{
						sId: "1000000",
						nCnt: +"3",
						sSubType: "qq",
						sName: "我的好友"
					}]
				}
			};
		</script>
		<script type="text/javascript">
			QMContact.load({
				"QMImport": ["https://rescdn.qqmail.com/zh_CN/htmledition/js/webp/com/kits/qmimport/js/qmimport327bfb.js"],
				"QMCalCom": ["https://rescdn.qqmail.com/zh_CN/htmledition/js/webp/com/kits/qmcalendar/cal24e6ae.js"],
				/**/
				"QMAddrFace": ["https://rescdn.qqmail.com/zh_CN/htmledition/js/webp/qmaddrface24e6b9.js", "https://rescdn.qqmail.com/zh_CN/htmledition/js/webp/qmiphoneupload24e6ae.js"]
			});
			QMContact.route("list", {
				sViewGroupId: "",
				sViewType: "normal",
				sViewGroupName: "全部"
			});
		</script>
	</body>
</html>