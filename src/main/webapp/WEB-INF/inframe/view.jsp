<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0194)https://mail.qq.com/cgi-bin/readmail?folderid=1&folderkey=1&t=readmail&mailid=390000000191630792202648542861&mode=pre&maxage=3600&base=11.27&ver=13079&sid=sL2C4LTRaQ9U1RdN#stattime=1515939652941 -->
<html>
	<head>
		<base href="${pageContext.request.contextPath }/"/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="referrer" content="origin">
		<meta name="renderer" content="webkit">
		<title>开始使用你的邮箱 - QQ邮箱</title>
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
			var gsUsed = "157";
			var gbSupportNW = true;
			var g_uin = "3261486093";
			window == getTop() && document.write('<script src="https://mail.qq.com/zh_CN/htmledition/js/all3ae95f.js"></' + 'script>');
			(getTop().initPageEvent || function() {})(window);
			var T = getTop().T,
				S = function(s) {
					return getTop().S(s, window);
				},
				Gel = S,
				show = function(o, b) {
					getTop().show(S(o) || o, b);
				},
				waitFor = getTop().waitFor,
				getUin = getTop().getUin,
				loadJsFile = getTop().loadJsFile,
				getSid = getTop().getSid,
				getDomain = GetDomain = getTop().getDomain;
		</script>
		<script>
			parent.beginStatTime && parent.beginStatTime(window);
		</script>
		<script>
			(function() {
				getTop().rdVer.check(window, "390000000191630792202648542861", 13079);
			})();
		</script>
		<link rel="stylesheet" type="text/css" href="css/comm2010392e89.css">
		<link rel="stylesheet" type="text/css" href="css/getcss.css">
		<link rel="stylesheet" type="text/css" href="css/readmail201237ff1f.css">
		<script>
			getTop().loadJsFileToTop([
				"https://mail.qq.com/zh_CN/htmledition/js/readmail23aa739.js",
				"https://mail.qq.com/zh_CN/htmledition/js/qmqzoneimg24e6b9.js",
				"https://mail.qq.com/zh_CN/htmledition/js/com/kits/qmeditor/qqmail/release/editor38a71a.js",
				"https://mail.qq.com/zh_CN/htmledition/js/com/kits/qmpreviewer/js/qmpreviewer392e89.js", "https://mail.qq.com/zh_CN/htmledition/js/location_identify/location_identify25f2fd.js"
			]);

			getTop().loadJsFileToTop(["https://mail.qq.com/zh_CN/htmledition/js/qmnetdisk38a714.js"]);
		</script>
		<script>
			/*function SendStatusOpt(isIng, isFail)
			{
			getTop().show(getTop().S("sendstatusloading", document), isIng);
			getTop().show(getTop().S("sendstatusloadfail", document), isFail);
			}

			function GetSendStatusIng()
			{
			SendStatusOpt(true, false);
			}

			function GetSendStatusOK()
			{
			SendStatusOpt(false, false);
			}

			function GetSendStatusFail()
			{
			var frame = getTop().S("mailSendStatus", document);
			if (getTop().isShow("sendstatusloading") && frame.src != "")
			{
			SendStatusOpt(false, true);
			frame.src = "";
			}
			}*/

			_sModule = "sendstatus";

			function StatusOpt(isIng, isFail) {
				getTop().show(getTop().S(_sModule + "loading", document), isIng);
				getTop().show(getTop().S(_sModule + "loadfail", document), isFail);
			}

			function GetStatusIng() {
				StatusOpt(true, false);
			}

			function GetStatusOK() {
				StatusOpt(false, false);
			}

			function GetStatusFail() {
				var frame = getTop().S("mail" + _sModule, document);
				if(getTop().isShow(_sModule + "loading") && frame.src != "") {
					StatusOpt(false, true);
					frame.src = "";
				}
			}

			function checkSenderImg(_aImgObj, _aReportEmail) {
				var _isLoadGravaterOK = parseInt(_aImgObj.width) == 40 || parseInt(_aImgObj.width) == 96;
				if(_isLoadGravaterOK) {
					_aImgObj.parentNode.style.visibility = 'visible';
				}
			}
		</script>
		<style>
			body {
				background: #fff;
				color: #000;
				font-weight: normal;
				font-family: "lucida Grande", Verdana, "Microsoft YaHei";
				padding: 0 7px 6px 4px;
				margin: 0;
			}
			
			.MacOS body {
				font-family: "lucida Grande", Verdana;
			}
			
			.qmbox {
				padding: 0;
			}
			
			.qm_con_body_content {
				height: auto;
				min-height: 100px;
				_height: 100px;
				word-wrap: break-word;
				font-size: 14px;
				font-family: "lucida Grande", Verdana, "Microsoft YaHei";
			}
			
			.MacOS .qm_con_body_content {
				font-family: "lucida Grande", Verdana;
			}
			
			body.thumb_list_readmail {
				padding: 0;
			}
			
			.thumb_list_readmail #nextnewDiv,
			.thumb_list_readmail #nextmail_top,
			.thumb_list_readmail #nextmail_bt {
				display: none;
			}
		</style>
	</head>

	<body context="390000000191630792202648542861" module="qmReadMail" md="md" mu="mu" class="">
		<div class="mailcontainer" id="qqmail_mailcontainer">
			<div module="qmSenderInfo" id="senderInfo" class="attbg mysidebar" style="_margin-top:2px;height:auto;*height:100%;display:none;z-index:20">
				<div class="bd" style="font-size:14px;font-weight:bold;border-width:0 0 2px 0;height:auto;padding:7px 2px 3px;margin:6px;clear:both;">
					<div style="float:right;">
						<a ck="toggle" href="javascript:;" style="font-size:12px;font-weight:normal;">关闭</a>
					</div>发件人信息</div>
				<div style="margin:8px 6px 0 6px;">
					<div style="height:40px;">
						<div class="tcolor qm_left txtflow" style="margin:2px 0 0 2px;width:168px;"><b class="grn" style="font-size:14px;font-weight:bold;">QQ邮箱管理员</b>&nbsp;</div>
						<div class="clear" style="margin:2px 0 0 2px;width:164px;">
							<div class="qm_left txtflow graytext" style="width:128px"><span title="10000@qq.com">10000@qq.com</span></div>
							<div style="float:right;">
								<a href="https://mail.qq.com/cgi-bin/addr_detail?sid=sL2C4LTRaQ9U1RdN&amp;AddrID=-1&amp;t=addr_detail_edit&amp;s=edit&amp;rmqqgroup=1">编辑</a>
							</div>
						</div>
					</div>
					<div class="toolbg clear" style="padding:5px 0 4px 6px;margin-top:4px;height:auto;"><span class="txtcolor">往来邮件</span>&nbsp;</div>
					<div id="divMails_sidebar" class="clear" style="margin:6px 0 0 0">
						<div style="margin:6px" class="tcolor">正在加载...</div>
					</div><br><br></div>
			</div>
			<form id="remind_frm" name="remind_frm" method="post" target="actionFrame" action="https://mail.qq.com/cgi-bin/reminder_mgr?sid=sL2C4LTRaQ9U1RdN"><input type="hidden" name="sid" value="sL2C4LTRaQ9U1RdN"><input type="hidden" name="action" value="cancle"><input type="hidden" name="ruleid"><input type="hidden" name="from"></form>
			<div id="mainmail" style="position:relative;z-index:1;margin-bottom:12px;">
				<div class="toolbg toolbgline toolheight" id="toolbgline_top" style="position:relative;z-index:2;">
					<div class="qm_right" id="nextmail_top">
						<a href="javascript:;" ck="prevandnext" mailid="ZC4606-GBXLPmptx6GJ4yF7xGGoY7c" type="normal" title="上一封：报名成功" id="prevmail" accesskey="b">上一封</a>&nbsp;
						<a style="color:#a0a0a0" disabled&nbsp;="" id="nextmail" accesskey="n">下一封</a>
					</div>
					<div class="nowrap qm_left">
						<a ck="goback" class="btn_gray btn_space btn_back left" hidefocus="" href="javascript:;"><span style="font-family:Verdana;">«</span>&nbsp;返回</a><input type="button" class="btn_sepline">
						<a ck="optMail" opt="forward" accesskey="j" class="btn_gray btn_space left" hidefocus="" href="javascript:;">转发</a>
						<a id="quick_del" ck="delMail" accesskey="d" class="btn_gray btn_space left" hidefocus="" href="javascript:;">删除</a>
						<a id="quick_completelydel" ck="delMail" opt="1" class="btn_gray btn_space left" hidefocus="" href="javascript:;">彻底删除</a>
						<div id="markContainer" name="markContainer" class="btn_space left">
							<a tabindex="-1" class="btn_gray  btn_dropdown " href="javascript:;" id="QmCs_2_0.06259292758867052_div" style="width:px;"><span id="QmCs_2_0.06259292758867052" class="btn_select_txt">标记为...</span><span class="ico_select_s"></span></a>
						</div>
						<div id="selmContainer" name="selmContainer" class="left">
							<a tabindex="-1" class="btn_gray  btn_dropdown " href="javascript:;" id="QmCs_2_0.3661585059452157_div" style="width:px;"><span id="QmCs_2_0.3661585059452157" class="btn_select_txt">移动到...</span><span class="ico_select_s"></span></a>
						</div>
						<div id="moreoprContainer" name="moreoprContainer" style="float:left;margin-right:4px;"></div>
					</div>
				</div>
				<div class="readmailinfo" style="position:relative;z-index:2;zoom:1;"><span id="subjectTip"></span>
					<table style="height:24px" border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td height="24" valign="middle" style="word-break:break-all;padding:9px 8px 2px 14px;" class="txt_left settingtable readmail_subject">
									<div class="qm_left" style="padding-bottom:3px;"><span id="subject" class="sub_title ">开始使用你的邮箱</span><input type="button" id="img_star" ck="starMail" class="qm_ico_flagoff" title="标为星标" hidefocus=""></div>
									<div id="tagContainer" ck="tag" class="TagDiv TagReadmail" style="overflow:visible;margin-top:0;"></div>
									<div class="clr"></div>
								</td>
								<td module="qmSenderInfo" id="senderInfo2" width="1%" nowrap="" class="f_size settingtable" style="padding:5px 12px 0 0;text-align:right;">
									<div style="width: 45px; text-align: left; visibility: visible;"> <img id="qqiconimg" src="images/getqqicon.png" style="position:absolute;margin:-14px 0 0 0;" class="qqshowbd" onload="checkSenderImg(this)"></div>
								</td>
							</tr>
						</tbody>
					</table>
					<table border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td style="padding-left:14px;" class="settingtable txt_left"><span class="addrtitle">发件人：</span><span rejecthtml="rejectionhtml" t="1" e="10000@qq.com" u="" n="QQ邮箱管理员" addrvip="" filinghtml="filinghtml" mailhtml="operhidepanel" mailid="390000000191630792202648542861" xqs="1" fid="0" cfid="1" dm="qq.com" ibm="false" iba="1" bcd="0" ctd="-100" isad="0" mop="1" sa="0" addrid="-1" se="1" sys="1"><b t="u" class="grn">QQ邮箱管理员</b>&nbsp;<b class="tcolor" t="u" id="tipFromAddr_readmail" fromaddr="10000@qq.com">&lt;10000@qq.com&gt;</b>&nbsp;<input t="u" type="button" title="腾讯系统邮件" class="s1bg" align="top">&nbsp;<input t="u" type="button" class="ico_profileTips" align="top">&nbsp;</span>&nbsp;
									<script type="text/javascript">
										(function(_aoWin) {
											_aoWin["_oOperPanel"] = {};
											0

											_aoWin["_oOperPanel"].filinghtml = '<a id="exbookid2" href="javascript:;" ck="exbookEmlMgr" book="2" module="qmAntiSpam" name="spam" title="将此发件人的邮件归档到个人文件夹"  class="pointer">自动归档</a>';
											_aoWin["_oOperPanel"].operhidepanel = '<span class="hide">&nbsp;<a href="javascript:;" class="pointer" module="qmSenderInfo" ck="toggle" id="senderInfo3">查看</a>&nbsp;&nbsp;</span>';
											if(_aoWin["_oOperPanel"].rejectionhtml) {
												_aoWin["_oOperPanel"].operhidepanel += '<span id="rejectionhtml">' + _aoWin["_oOperPanel"].rejectionhtml + '</span>';
											}
											if(_aoWin["_oOperPanel"].filinghtml) {
												_aoWin["_oOperPanel"].operhidepanel += '<span id="filinghtml">' + _aoWin["_oOperPanel"].filinghtml + '</span>';
											}
										})(window)
									</script><span id="operhidepanel" style="display:none"><span class="hide">&nbsp;<a href="javascript:;" class="pointer" module="qmSenderInfo" ck="toggle" id="senderInfo3">查看</a>&nbsp;&nbsp;</span> <span id="filinghtml"><a id="exbookid2" href="javascript:;" ck="exbookEmlMgr" book="2" module="qmAntiSpam" name="spam" title="将此发件人的邮件归档到个人文件夹" class="pointer">自动归档<!--</span--></a></span>
									<a id="exbookid2" href="javascript:;" ck="exbookEmlMgr" book="2" module="qmAntiSpam" name="spam" title="将此发件人的邮件归档到个人文件夹" class="pointer"><span id="latestqzone"></span> </a>
									</span>
								</td>
								<td width="1%" nowrap="" style="padding-right:12px;" class="settingtable"></td>
							</tr>
						</tbody>
					</table>
					<table border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td style="word-break:break-all;padding:2px 12px 0 14px;line-height:19px;" width="99%" class="settingtable txt_left"><span class="addrtitle">时&nbsp;&nbsp;&nbsp;间：</span><b class="tcolor">2017年10月28日(星期六) 中午11:57</b></td>
								<td nowrap="" valign="bottom" style="padding:4px 10px 2px 0;*padding:4px 10px 2px 0;text-align:right" width="1%" rowspan="2" class="txt_right settingtable noUnderLineList"><span style="vertical-align:6px;vertical-align:4px\9;"><a href="javascript:location.href=&#39;/cgi-bin/readmail?disptype=text&amp;sid=sL2C4LTRaQ9U1RdN&amp;mailid=390000000191630792202648542861&amp;s=&#39;+(getTop().bnewwin?&#39;&amp;newwin=true&#39;:&#39;&#39;)">纯文本</a> | </span>
									<a href="javascript:;" ck="newWinRead"><span type="button" class="qm_ico_reopen" title="新窗口读信"></span></a>
									<a href="javascript:;"><span id="rmd" module="qmRemark" ck="toggle" class="qm_ico_remarkoff" title="添加邮件备注"></span></a>
									<a href="javascript:;"><span ck="createRule" fromaddr="10000@qq.com" class="qm_ico_addFilter" title="归档至..."></span></a>
									<a href="javascript:;"><span class="qm_ico_print" id="mail_print" title="打印" onclick="window.open(&#39;/cgi-bin/readmail?sid=sL2C4LTRaQ9U1RdN&amp;t=readmail_print&amp;s=print&amp;filterflag=true&amp;mailid=390000000191630792202648542861&#39;);"></span></a>
									<a id="aSwitchOption" onclick="getTop().switchOption(window)" style="text-decoration:none;" hidefocus=""><span class="qm_ico_quickdown" alt="显示更多操作" id="display_more_operator"></span></a><span id="tipRemindEdit"></span></td>
							</tr>
							<tr>
								<td style="padding:0 0 0 14px;line-height:19px;" class="settingtable txt_left">
									<div>
										<div class="addrtitle nowrap" style="position:absolute;">收件人：</div>
										<div style="padding-left:48px;font-size:12px;overflow:hidden; zoom:1;"><span style="white-space:nowrap;height:18px;line-height:18px; " class="left" t="1" e="3261486093@qq.com" u="-1211235615" n="简·易~减" mop="1" addrvip="" rejecthtml="rejectionhtml" filinghtml="filinghtml" mailhtml="operhidepanel" mailid="390000000191630792202648542861" xqs="1" fid="0" cfid="1" dm="qq.com" ibm="false" iba="1" bcd="0" ctd="-100" sd="0" se="0">简·易~减&nbsp;<b t="u" class="tcolor">&lt;3261486093@qq.com&gt;</b></span></div>
									</div>
								</td>
							</tr>
							<tr>
								<td style="padding:0 14px;line-height:20px;" class="settingtable txt_left"><span id="trOption" style="display:none">                                            <span class="addrtitle">大&nbsp;&nbsp;&nbsp;小：</span>4.7K<br>
									<a href="javascript:;" ck="optMail2" opt="print">打印</a>&nbsp;|&nbsp;
									<a href="javascript:;" ck="optMail2" opt="mime" title="显示邮件的源代码">显示邮件原文</a>&nbsp;|&nbsp;
									<a href="javascript:;" ck="optMail2" opt="dleml" title="导出为邮件客户端可用的文件">导出为eml文件</a>&nbsp;|&nbsp;
									<a href="javascript:;" ck="optMail2" opt="code" title="改变页面编码以解决邮件乱码问题">邮件有乱码？</a>&nbsp;|&nbsp;
									<a href="javascript:;" ck="optMail2" opt="fwgroup">转发到群邮件</a><span>&nbsp;|&nbsp;<a id="savetonotepad" href="javascript:;" ck="optMail2" opt="note">保存到记事本</a><span id="remind_add_mailid:390000000191630792202648542861">&nbsp;<span id="addtoremind">|&nbsp;<a href="javascript:;" ck="optMail2" opt="remind">添加到日历</a></span><span id="remind_edit_390000000191630792202648542861" class="pointer"></span></span>&nbsp;|&nbsp;
									<a href="javascript:;" ck="optMail2" opt="fweml">作为附件转发</a>
									<!-- |&nbsp;<a href="javascript:;" ck="optMail2" opt="translate" data-tltype="youdao">有道翻译</a>|&nbsp;<a href="javascript:;" ck="optMail2" opt="translate" data-tltype="ciba">词霸翻译</a> -->
									</span>
									</span>
								</td>
							</tr>
						</tbody>
					</table>
					<div module="qmRemark" id="remarkcontainer" style="display:none; margin:5px 0 0;; padding:2px 0 0;">
						<div class="qqshowbd" style="border-width:1px 0 0;padding:7px 14px 2px;">
							<div class="addrtitle qm_left" style="*margin-top:3px;">备　注：</div>
							<div id="remarkread" style="display:none; margin-left:48px;*margin-left:45px;width:463px;*width:475px;">
								<div class="remarksContent" id="remarkContent" ck="modify" style="font-size:12px;min-height:42px;padding:10px;background:#fff6cf; border:1px solid #dec694;color:#733900;line-height:18px;" title="点击编辑"></div>
								<div class="attbg" style="padding:4px 0 4px 8px;">
									<a href="javascript:;" ck="modify" style="margin-right:5px;"><input style="background:url(https://mail.qq.com/zh_CN/htmledition/images/newicon/mail327a44.png) scroll -64px -142px; width:12px; height:14px;cursor:pointer;border:none;margin-right:3px;vertical-align:bottom\9\0;_vertical-align:1px;" onfocus="this.blur()">编辑</a>
									<a href="javascript:;" ck="del"><input style="background:url(https://mail.qq.com/zh_CN/htmledition/images/newicon/mail327a44.png) scroll -80px -142px; width:13px; height:13px;cursor:pointer;border:none;margin-right:3px;vertical-align:bottom\9\0;_vertical-align:1px;" onfocus="this.blur()">删除</a>
								</div>
							</div>
							<div class="remarkModify" style="display:none;margin-left:45px;" id="remarkwrite"><textarea id="remarktext" style="width:475px;*height:74px;min-height:72px;font-size:14px; overflow:hidden; margin:0 0 3px; padding:3px; color:#A0A0A0;" class="qm_txt">请在此输入备注...</textarea>
								<div style="margin-left:3px;*margin-left:6px;"><input type="button" class="qm_btn wd2" value="保存" ck="save" id="remarksave">
									<a ck="cancel" id="remarkdel" style="*vertical-align:5px;display:inline-block;padding-left:6px;">取消</a>
								</div>
							</div>
						</div>
					</div>
					<table border="0" cellspacing="0" cellpadding="0">
						<tbody>
							<tr>
								<td class="onesize settingtable" style="height:5px;"></td>
							</tr>
						</tbody>
					</table>
					<div class="txt_left">
						<div class="attbg" style="padding:6px 14px 4px;">请认准此标志<input type="button" class="s1bg" title="">，拥有此标志的才是发自腾讯公司的系统邮件。</div>
						<div class="attbg" id="starStatus" style="_zoom:1;padding:6px 14px;display:none"><span class="addrtitle">标记：</span>已将此邮件标记为星标邮件。&nbsp;
							<a id="starStatuslink" ck="starMail" href="javascript:;">取消星标</a>
						</div>
						<div class="attbg" id="mailtopStatus" style="_zoom:1;padding:6px 14px;display:none"><span class="addrtitle">标记：</span>已将此邮件在列表中置顶。&nbsp;
							<a id="mailtopStatuslink" ck="topMail" href="javascript:;">取消置顶</a>
						</div>
						<div class="attbg" id="starTopStatus" style="_zoom:1;padding:6px 14px;display:none"><span class="addrtitle">标记：</span>已将此邮件标记为星标邮件，并在列表中置顶。&nbsp;
							<a ck="starMail" href="javascript:;">取消星标</a>&nbsp;
							<a ck="topMail" href="javascript:;">取消置顶</a>
						</div>
						<script>
						</script>
						<div class="attbg" id="reminderContainer_mailid:390000000191630792202648542861" style="padding:5px 14px;display:none;"></div>
						<div id="spam" module="qmAntiSpam" name="spam" style="zoom:1;"> </div>
					</div>
				</div>
				<!-- page end-->
				<div style="position:absolute;right:0px;width:1px;height:1px;">
					<div id="tip74container"></div>
				</div>
				<div id="contentDiv" onmouseover="getTop().stopPropagation(event);" onclick="getTop().preSwapLink(event, &#39;html&#39;, &#39;390000000191630792202648542861&#39;);" style="position:relative;font-size:14px;height:auto;padding:15px 15px 10px 15px;z-index:1;zoom:1;line-height:1.7;" class="body">
					<div id="qm_con_body">
						<div id="mailContentContainer" class="qmbox qm_con_body_content qqmail_webmail_only">
							<div class="qmeml qmbox">
								<table cellpadding="0" cellspacing="0" border="0" style="border-collapse: collapse;width: 100%;">
									<tbody>
										<tr>
											<td>
												<div style="width:700px; margin:0 auto; padding-bottom:30px;max-width: 100%;">
													<h1 style="margin:0"><img src="images/logo_0_0.gif" alt="QQ邮箱"></h1>
													<div style="border:1px solid #d8d8d8; border-radius:5px; padding:40px 48px 20px; background:#f5f5f5; font-size:14px; font-family:Microsoft YaHei; box-shadow:1px 2px 0 #e2e2e2; -moz-box-shadow:1px 2px 0 #e2e2e2; -webkit-box-shadow:1px 2px 0 #e2e2e2;">
														<div style="background:url(&#39;https://res.mail.qq.com/zh_CN/htmledition/images/function/welcome/welcome_top_bg.png&#39;) center bottom no-repeat; padding-bottom:45px;">
															<p style="margin:0; font-weight:bold; font-size:14px; line-height:20px;">亲爱的QQ邮箱用户：</p>
															<div style="height: 15px;font-size: 0">&nbsp;</div>
															<p style="margin:0; text-indent:2em; font-size:14px;line-height:28px;">你的邮箱已经成功开通了，欢迎你的到来。</p>
															<p style="margin:0; text-indent:2em; font-size:14px;line-height:28px;">现在，你可以开始使用QQ邮箱了。如果这是你第一次使用，下面这些指引或许能帮到你。</p>
														</div>
														<ul style="margin:0; padding:12px 0 0;">
															<li style="list-style:none; overflow:hidden; _zoom:1;">
																<img style="float:left;padding-right: 43px;" src="images/welcome_01.png" alt="=&quot;别名邮箱&quot;">
																<div style="padding:34px 0 0 0;">
																	<h3 style="font-size:20px; display:none; font-family:Microsoft YaHei; color:#4cb5eb; font-weight:bold; margin:0;">你的邮箱，可以有不同的名字。</h3>
																	<p style="color:#666666; font-size:14px;line-height:20px;">你可以给你的邮箱设置一个英文别名，它方便记忆，且不会透露你的QQ号。</p>
																</div>
															</li>
															<li style="list-style:none; overflow:hidden; _zoom:1;">
																<img style="float:left;padding-right: 43px;" src="images/welcome_02.png" alt="=&quot;收取其他邮箱&quot;">
																<div style="padding:34px 0 0 0;">
																	<h3 style="font-size:20px;  display:none; font-family:Microsoft YaHei; color:#4cb5eb; font-weight:bold; margin:0;">无需东奔西走，让所有邮件归于一处。</h3>
																	<p style="color:#666666; font-size:14px;line-height:20px;">如果你有Gmail、Outlook等其他邮箱，可以直接搬过来，在我们这里收发邮件。</p>
																</div>
															</li>
															<li style="list-style:none; overflow:hidden; _zoom:1;">
																<img style="float:left;padding-right: 43px;" src="images/welcome_03.png" alt="=&quot;移动的QQ邮箱&quot;">
																<div style="padding:34px 0 0 0;">
																	<h3 style="font-size:20px;  display:none; font-family:Microsoft YaHei; color:#4cb5eb; font-weight:bold; margin:0;">移动的QQ邮箱，随时随地，常联系。</h3>
																	<p style="color:#666666; font-size:14px;line-height:20px;">你还可以通过手机或平板电脑随时随地访问QQ邮箱。</p>
																</div>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<style type="text/css">
								.qmbox style,
								.qmbox script,
								.qmbox head,
								.qmbox link,
								.qmbox meta {
									display: none !important;
								}
							</style>
						</div>
					</div>
					<!-- -->
					<style>
						#mailContentContainer .txt {
							height: auto;
						}
					</style>
				</div>
				<script>
					(function() {
						var _oImgs = getTop().GelTags("img", getTop().S("mailContentContainer", window));
						getTop().E(_oImgs, function(_aoItem) {
							_aoItem.onerror = function() {
								if(this.src && /.*mail\.qq\.com\/cgi-bin\/viewfile.*/i.test(this.src)) {
									getTop().LogKV({
										sValue: 'getinvestigate|readmail|readmail|imgerror'
									});
								}
								if(this.src && !/.*mail.qq.com\/cgi-bin.*/.test(this.src) && /http:\/\//.test(this.src) && this.clientHeight * this.clientWidth > 0) {
									this.onerror = null;
									this.src = "/cgi-bin/get_netres?url=" + encodeURIComponent(this.src) + "&sid=" + getTop().getSid();
								}
							}
						});
					})();
				</script>
			</div><img id="qqmailcontent_load_finsih" width="0" height="0" style="height:0;display:none;">
			<div id="pageEnd" style="clear: both; position: relative; z-index: 2;">
				<div id="bgmusic" style="padding:6px 0;display:none;margin-left:12px">您的朋友 QQ邮箱管理员 为这封邮件插入了背景音乐 -
					<a target="_blank">下载</a>&nbsp;&nbsp;
					<a href="javascript:;">播放</a>
					<a name="player"></a>
				</div>
				<div id="mp3player_info" style="padding:0 0 10px 0;margin-left:12px;display:none;">&nbsp;</div>
				<div id="mp3player_container" style="padding:0 0 20px 0;margin-left:12px; margin-top:10px; display:none;">播放器加载中...</div>
				<div module="qmQReply" id="quickreply" class="quickreply" style="margin:0;display:none;display:none;">
					<div class="qm_msg infobar" id="afterSendingDiv" style="margin-top:-25px;position:absolute;border:0;padding:4px 12px 4px;display:none;">正在发送...</div>
					<div class="bd" style="border-width:0 0 1px 0;"></div>
					<div style="padding:10px 0 0 8px;border-bottom:1px solid #fff;height:24px;display:none;" class="settingtable" id="afterSendDiv"> 此邮件已成功发送。
						<a ck="readyToWrite" href="javascript:;">再回一封</a>
					</div>
					<div class="settingtable" id="QuickReplyPart" style="height:auto;min-height:10px;border-bottom:1px solid #fff;padding-top:10px;padding-botom:8px;overflow:hidden;z-index:1000;clear:both;">
						<div style="width:100%;">
							<div id="Senderdiv" style="margin:-10px 0 0 0;*margin:-3px 0 0 0;padding:6px 0 10px 0;*padding:0 0 7px 0;display:none;"></div>
							<div class="qm_left" style="width:99.5%;" id="qmQuickReplyTextContainer">
								<div style="width:99.5%;"><textarea id="source" md="checkBcc" class="graytext qm_txt" accesskey="q" style="height:16px;width:100%;overflow:hidden;">快捷回复给：QQ邮箱管理员</textarea></div>
							</div>
							<div class="" style="width:99.5%;display:none;z-index:1;float:left;" id="rteContainer">
								<div md="stopFold" ck="jump" style="float:right;margin:3px 0 0 6px;*margin:0;"><input type="button" class="ico_input icon_switch_compose" style="margin-right:4px;margin-bottom:3px;*margin-bottom:0;vertical-align:middle;">
									<a href="javascript:;" id="jumpToNewWin">切换到完整写信模式</a>
								</div>
								<div style="margin:2px 0 3px 1px;white-space:nowrap;*margin-top:0;" class="addrtitle"><span id="QMEditorToolBarPlusArea"></span><span id="tooBarContain"></span></div>
								<div id="QMEditorArea" style="" tindex="1">
									<script>
										try {
											document.write(outputDataLoading(true));
										} catch(e) {}
									</script>
								</div>
								<div class="clr"></div>
							</div>
							<div style="display:none;clear:both;float:left;width:99.5%;margin-top:5px;height:40px;" id="qmQuickReplyButtonContainer">
								<a md="stopFold" ck="send" href="javascript:void(0);" tabindex="2" id="sendbtn" name="sendbtn" class="left bold b_size button_green_s">&nbsp;发送&nbsp;</a>
								<div class="clr"></div>
							</div>
							<div class="clr"></div>
						</div>
					</div>
				</div>
				<div id="nextnewDiv" onmouseover="this.className=&#39;attbg mail_readmode&#39;" onmouseout="this.className=&#39;toolbg mail_readmode&#39;" class="toolbg mail_readmode" style="clear:both;position:relative;z-index:2;cursor:pointer;padding:0 8px 0 7px;zoom:1;display:none;" ck="prevandnext" mailid="">
					<div class="bd" style="padding:2px 0 6px 0;*padding:6px 0 0 0;border-width:0 0 1px 0;">
						<div class="qm_left" style="margin:6px 0 0 1px;">下一封未读：</div>
						<div class="qm_left" style="margin:0x 0 0 1px;*margin:-2px 0 0 1px"><input type="button" style="display:block;padding:0;float:left;width:18px;height:16px;margin:5px 0 0;cursor:default;border:0;" class="Ru"></div>
						<div style="margin:6px 0 0 0;*margin:4px 0 0 0"><span id="nextnewmail" style="color:#000;" class="bold" target="actionFrame" name="_QQMail_ReferenceGroupMail_"></span></div>
						<div class="clr"></div>
					</div>
				</div>
				<div class="toolbg toolbgline toolheight" style="position:relative;z-index:2;">
					<div class="qm_right" id="nextmail_bt">
						<a href="javascript:;" ck="prevandnext" mailid="ZC4606-GBXLPmptx6GJ4yF7xGGoY7c" type="normal" title="上一封：报名成功" id="prevmail" accesskey="b">上一封</a>&nbsp;
						<a style="color:#a0a0a0" disabled&nbsp;="" id="nextmail" accesskey="n">下一封</a>
					</div>
					<div class="nowrap qm_left">
						<a ck="goback" class="btn_gray btn_space btn_back left" hidefocus="" href="javascript:;"><span style="font-family:Verdana;">«</span>&nbsp;返回</a><input type="button" class="btn_sepline">
						<a ck="optMail" opt="forward" accesskey="j" class="btn_gray btn_space left" hidefocus="" href="javascript:;">转发</a>
						<a id="quick_del" ck="delMail" accesskey="d" class="btn_gray btn_space left" hidefocus="" href="javascript:;">删除</a>
						<a id="quick_completelydel" ck="delMail" opt="1" class="btn_gray btn_space left" hidefocus="" href="javascript:;">彻底删除</a>
						<div id="markContainer" name="markContainer" class="btn_space left">
							<a tabindex="-1" class="btn_gray  btn_dropdown " href="javascript:;" id="QmCs_2_0.782570032660814_div" style="width:px;"><span id="QmCs_2_0.782570032660814" class="btn_select_txt">标记为...</span><span class="ico_select_s"></span></a>
						</div>
						<div id="selmContainer" name="selmContainer" class="left">
							<a tabindex="-1" class="btn_gray  btn_dropdown " href="javascript:;" id="QmCs_2_0.008235952712251082_div" style="width:px;"><span id="QmCs_2_0.008235952712251082" class="btn_select_txt">移动到...</span><span class="ico_select_s"></span></a>
						</div>
						<div id="moreoprContainer" name="moreoprContainer" style="float:left;margin-right:4px;"></div>
					</div>
				</div>
			</div>
		</div>
		<script>
			var _oTop = getTop();

			function showNetDisk(_aoContainer) {
				getTop().waitFor(
					function() {
						return getTop().QMNetDisk && getTop().QMNetDisk.getInfo()
					},
					function(_abIsOk) {
						if(_abIsOk) {
							var _oDiskInfo = getTop().QMNetDisk.getInfo(),
								_oDomAttCon = getTop().finds("div[ui-type='attCon']", _aoContainer)[0],
								_oDomList = getTop().finds("a.netdisk_hide", _oDomAttCon || _aoContainer) || [],
								_oDomAtt = _oDomList[0];

							for(var i = 0; i < _oDomList.length; i++) {
								getTop().QMNetDisk.uploadEntry(_oDomList[i]);
							}

							_oDomAttCon && _oDomAtt &&
								setTimeout(function() {
									getTop().QMNetDisk.route("tips", "readmail", _oDomAttCon, {
										offsetLeft: _oDomAtt.offsetLeft + _oDomAtt.clientWidth / 2,
										offsetTop: 80
									});
								}, 3000);
						}
					}
				);
			}
			showNetDisk(document);
			_oTop.waitFor(
				function() {
					return !!(_oTop.QMReadMail);
				},
				function(_abIsOk) {
					if(_abIsOk) {

						var hasExpired = [],
							hasDeleted = [];

						try {
							window.QMReadMail = new(_oTop.QMReadMail.qmReadMail)({

								bNeedIdentifyLocation: true,

								sLocationIdentifyUrl: '//' + _oTop.location.hostname + '/zh_CN/htmledition/js/location_identify/location_identify_worker2911e7.js',

								sLocationWorkerImportUrl: '//' + _oTop.location.hostname + '/zh_CN/htmledition/js/location_identify/location_identify25f2fd.js',

								logintype: '1',
								reandfw: "",
								mailtype: 'comm',
								xqqstyle: '1',
								noIncludeArtcle: false,
								bOpenTag: "1",

								hadExpiredAttachs: {
									hasExpired: hasExpired,
									hasDeleted: hasDeleted
								},

								loc: "readmail,readmail,",
								subtmpl: "",
								folderid: "1",
								folderkey: "1",
								saveFrom: "3261486093@qq.com",
								titlePrefix: "0",
								sendmailname: "3261486093@qq.com",
								disptype: "html",

								bNewMail: 1,

								bNeedReceipt: 0,

								bStar: false,
								bAddrvip: false,
								bSys: true,
								bAd: false,
								oSysTag: "system:1|friend:0|important:0|",
								bDft: false,
								oMatchTag: [],
								oMoveItems: [{
										sId: 'fid_1',
										sItemValue: "收件箱"
									},
									{
										sId: 'fid_3',
										sItemValue: "已发送"
									},
									{
										sId: "fid_129",
										sItemValue: "QQ邮件订阅"
									},
									{
										nHeight: 10,
										sItemValue: '<div style="background:#CCC; height:1px; margin-top:5px; overflow:hidden;"></div>'
									}, //'<hr style="color:#CCC;height:1px;"/>' },
									{
										sId: "new",
										sItemValue: '新建文件夹...'
									}
								],
								oMoreOpt: ["addremark", "addstar", "addremind", "print"]
							}, {
								from: {
									name: "QQ邮箱管理员",
									addr: "10000@qq.com",
									qq: ""
								},
								date: "2017年10月28日(星期六) 中午11:57",
								dateeng: "",

								to: [{
									name: "简·易~减",
									addr: "3261486093@qq.com",
									qq: "-1211235615"
								}, ],

								cc: [],

								subject: "开始使用你的邮箱",

								replyTo: [{
									name: "QQ邮箱管理员",
									addr: "10000@qq.com"
								}],

								replyCc: [],

								reSubject: "开始使用你的邮箱"
							}, {
								oWin: window,
								sContext: "390000000191630792202648542861",
								sModuleName: "qmReadMail"
							});
						} catch(e) {
							alert(e.message)
						}

						var tag = [{}];
						tag.length = tag.length - 1;
						getTop().QMTag && getTop().QMTag.set(tag, "1515939653827017");

					} else {
						debug("读信readmail2.js加载失败");
					}
				}, 10);

			getTop().switchFolder('folder_1');
		</script>
		<script type="text/javascript" src="./speed-report29d207.js"></script>
		<script type="text/javascript" src="./bj-report39afc1.js"></script>
		<script type="text/javascript">
			BJ_REPORT.init({
				id: 112,
				url: "https://mail.qq.com/badjs",
				ignore: [/Script error/i],
				random: 0.1
			});
			var _oTop = getTop();
			_oTop.waitFor(
				function() {
					return _oTop.resetTopFrameError;
				},
				function(_abIsOk) {
					_oTop.resetTopFrameError();
				});
		</script>
		<script type="text/javascript">
			setTimeout(function() {
				xly_report.pageSpeed(78500185, window, 0.01);
			}, 1000);
		</script>
		<script>
			parent.endStatTime && parent.endStatTime(window, {
				mailid: "390000000191630792202648542861",
				folderid: "1",
				type: "readmail",
				rcgi: "readmail",
				rt: "readmail",
				rs: "",
				wm_flowid: "3397654"
			});
		</script>
	</body>
</html>