<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0137)https://mail.qq.com/cgi-bin/laddr_list?sid=sL2C4LTRaQ9U1RdN&operate=view&t=contact&view=normal&loc=frame_html,,,23#stattime=1515939446982 -->
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
			var gsUsed = "116";
			var g_uin = "3261486093";
			window == getTop() && document.write('<script src="https://mail.qq.com/zh_CN/htmledition/js/all3ae95f.js"></' + 'script>');
			(getTop().initPageEvent || function() {})(window);
		</script>
		<meta name="save" content="history">
		<title>QQ邮箱 - 通讯录</title>
		<link rel="stylesheet" type="text/css" href="../css/comm2010392e89.css">
		<link rel="stylesheet" type="text/css" href="../css/getcss.css">
		<link rel="stylesheet" type="text/css" id="contactStyle" href="../css/contacts201324e6b9.css">
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
							<a href="https://mail.qq.com/cgi-bin/laddr_list?sid=sL2C4LTRaQ9U1RdN&amp;operate=view&amp;t=contact&amp;view=normal">全部(<span ui-type="groupcnt" data-id="0" class="inline_block">0</span>)</a>
						</li>
					</ul>
					<h3>其他联系人</h3>
					<ul class="navlist_min">
						<li class="fs">
							<a href="https://mail.qq.com/cgi-bin/laddr_list?sid=sL2C4LTRaQ9U1RdN&amp;operate=view&amp;t=contact&amp;view=other">历史联系人(<span ui-type="groupcnt" data-id="-110" class="inline_block">0</span>)</a>
						</li>
					</ul>
					<h4>QQ好友</h4>
					<ul class="navlist_min navlist_qq">
						<li class="fs">
							<a href="https://mail.qq.com/cgi-bin/laddr_list?sid=sL2C4LTRaQ9U1RdN&amp;operate=view&amp;t=contact&amp;view=qq&amp;groupid=1000000"><span ui-type="grouptitle">我的好友</span>(<span ui-type="groupcnt" data-type="normal" data-id="1000000" class="inline_block">3</span>)</a>
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
			<div id="con" class="panel_edit settingtable qqshowbd" style="display:none;"></div>
		</div>
		<script type="text/javascript" src="./qmcontact32a2d6.js"></script>
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
				"QMImport": ["https://mail.qq.com/zh_CN/htmledition/js/com/kits/qmimport/js/qmimport327bfb.js"],
				"QMCalCom": ["https://mail.qq.com/zh_CN/htmledition/js/com/kits/qmcalendar/cal24e6ae.js"],
				/**/
				"QMAddrFace": ["https://mail.qq.com/zh_CN/htmledition/js/qmaddrface24e6b9.js", "https://mail.qq.com/zh_CN/htmledition/js/qmiphoneupload24e6ae.js"]
			});
			QMContact.route("list", {
				sViewGroupId: "",
				sViewType: "normal",
				sViewGroupName: "全部"
			});
		</script>
	</body>

</html>