<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0137)https://mail.qq.com/cgi-bin/readtemplate?sid=ure_pvIkstSwo2E7&t=compose&ver=0501&s=cnew&s=left&loc=frame_html,,,21#stattime=1516557949151 -->
<html>

	<head>
		<base href="${pageContext.request.contextPath }/"/>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="save" content="history">
		<title>QQ邮箱 - 写信</title>
		<script>
			document.domain = "localhost";
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
			var gsUsed = "37";
			var gbSupportNW = true;
			var g_uin = "3261486093";
			window == getTop() && document.write('<script src="https://rescdn.qqmail.com/zh_CN/htmledition/js/webp/all3ae95f.js"></' + 'script>');
			(getTop().initPageEvent || function() {})(window);
		</script>
		<script language="JavaScript">
			getTop().ossLogComposeInitTime('page');

			getTop().switchFolder("folder_newmail");

			if(!getTop().initComposeForPage)

			{

				getTop().LogKV('compose|js_not_ready');

			}

			function reloadComposeJS(_abReload) {

				var _oTop = getTop();

				_oTop.localReloadJsFile('/qqemail/js/qmaddrinput2392e83.js', function() {
					return _oTop.QMAddrDomainCheck2
				}, 'qmaddrinput2', _abReload);

				_oTop.localReloadJsFile('/qqemail/js/compose23aa739.js', function() {
					return _oTop.initComposeForPage
				}, 'compose2', _abReload);

				_oTop.localReloadJsFile('/qqemail/js/editor38a71a.js', function() {
					return _oTop.QMEditor
				}, 'editor', _abReload);

				_oTop.localReloadJsFile('/qqemail/js/location_identify25f2fd.js', function() {
					return _oTop.locationIdentifier
				}, 'location_identify', _abReload);

			}

			reloadComposeJS();

			function saveContentGoUrl(_asURL) {
				getTop().goUrlMainFrm(_asURL, false, true);
			}

			function closePage() {}
		</script>
		<link rel="stylesheet" type="text/css" href="css/comm2010392e89.css">
		<link rel="stylesheet" type="text/css" href="css/getcss.css">
		<style type="text/css">
			.input_wd {
				width: 100%;
				padding: 2px 2px 0 2px;
				height: 22px;
			}
			
			.paper_controller_btn {
				display: inline-block;
			}
			
			textarea {
				padding: 2px;
				font: normal 14px Verdana, "Microsoft YaHei";
			}
			
			.MacOS textarea {
				font-family: Verdana;
			}
			
			.rev {
				overflow: visible;
				word-break: break-all;
			}
			
			.addr {
				border: 1px solid #718da6;
			}
			
			.pd {
				padding: 4px 10px 5px 0;
				min-width: 552px;
			}
			
			.pd1 {
				width: 100%;
				min-width: 695px;
			}
			
			.subtitle {
				padding-left: 20px;
				padding-top: 6px;
				vertical-align: top;
			}
			
			.input_title {
				margin: 0 0 6px 68px;
				zoom: 1;
			}
			
			.content_title {
				padding: 0 0 5px 12px;
			}
			
			.upload {
				display: none
			}
			
			.hello_img {
				position: absolute;
				margin: -8px 0 0 2px;
				x_margin: -10px 0 0 2px
			}
			
			.opa50 {
				opacity: 0.5;
				filter: alpha(opacity=50)
			}
			
			.toolbgline {
				padding: 5px 7px;
				height: auto;
				x_height: 34px;
				_zoom: 1;
			}
			
			.upload_ctrl {
				margin-top: 1px;
				margin-top: 5px\0;
				+margin-top: 3px;
				_margin-top: 1px;
			}
			
			.arrowdown {
				background: url(../images/r_c1e9c5d.gif) no-repeat -48px 0;
				margin: 0 0 -1px 4px;
				height: 12px;
				width: 12px;
			}
			
			.arrowup {
				background: url(../images/r_c1e9c5d.gif) no-repeat -32px -1px;
				margin: 0 0 -2px 4px;
				height: 12px;
				width: 12px;
			}
			
			.attsep .attchUploadstyle {
				display: inline-block;
				border-width: 1px;
				height: 7px;
				vertical-align: 0;
				overflow: hidden;
			}
			
			.attsep .attchUploadstyle .fdbody {
				height: 10px;
			}
			
			.qmEditorIfrmEditArea {
				display: block;
				width: 100%;
				height: 100%;
				border-top: 1px solid #d4d4d4;
				margin-bottom: 1px;
			}
			
			#exist_file {
				line-height: 0;
				font-size: 0;
			}
			
			#exist_file div {
				line-height: 14px;
				font-size: 12px;
			}
			
			.qmEditorBtnTextCt {
				_zoom: 1;
				_overflow: hidden;
				_top: -2px;
			}
			
			.DragAndDropTrap_box {
				_top: -2px;
			}
			
			.DragAndDropTrap_box #AttachFrame {
				_zoom: 1;
				_overflow: hidden;
			}
			/* mac retina */
			
			@media only screen and (-webkit-min-device-pixel-ratio: 2),
			only screen and (min-device-pixel-ratio: 2) {
				.arrowdown,
				.arrowup {
					background-image: -webkit-image-set(url(../images/r_c1e9c5d.gif) 1x, url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/r_c@2X1e9c5d.png) 2x);
				}
			}
		</style>
		<style type="text/css">
			@media screen and (-webkit-min-device-pixel-ratio:0) {
				select {
					line-height: 120%;
				}
			}
		</style>
		<style type="text/css" cssfrom=",qmEditor,qmNetDisk">
			.cptab {
				z-index: 2;
			}
			
			#stationery_div li {
				float: left;
				width: 84px;
				text-align: center;
				margin: 5px 0 0 0;
			}
			
			#stationery_div img {
				border: 1px solid #b8bfd0;
				width: 70px;
				height: 70px;
			}
			
			input {
				font: normal 12px Verdana, "Microsoft YaHei";
			}
			
			.MacOS input {
				font-family: Verdana;
			}
			
			#page_span input {
				font: bold 12px 宋体;
				border: 1px solid #8ba8c8;
				background: #eff7ff;
				color: #039;
				margin: 0 4px;
				width: 32px;
				height: 18px;
				padding: 2px 3px 1px 3px;
			}
			
			#page_span button {
				border: none;
				background: none;
				width: 20px;
				height: 16px;
				margin: -2px 0 0 0;
				padding: 0;
			}
			
			#page_span img {
				width: 7px;
				height: 11px;
				border: 0;
			}
			
			#page_span img.arrow_tableft_disable {
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tableft_disable1e9c5d.gif) no-repeat;
			}
			
			#page_span img.arrow_tableft {
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tableft1e9c5d.gif) no-repeat;
			}
			
			#page_span img.arrow_tabright_disable {
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tabright_disable1e9c5d.gif) no-repeat;
			}
			
			#page_span img.arrow_tabright {
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tabright1e9c5d.gif) no-repeat;
			}
			
			#pageid {
				margin: 0 4px;
			}
			
			#pageid b {
				font-weight: normal
			}
			
			select {
				margin: 0 0 0 1px;
				font: normal 12px Tahoma;
				width: 80px;
			}
			
			.btnstep {
				font: normal 12px Verdana;
				margin-left: 3px;
				height: 22px;
				padding: 2px 3px 1px 3px;
			}
			
			#pageid b {
				font-weight: normal
			}
			
			ul#show_paper,
			ul#list {
				margin: 0 0 0 12px;
				padding: 0;
				list-style: none;
			}
			
			ul#list {
				margin: 0 0 0 10px
			}
			
			#nolist {
				border: 1px solid #fff;
				height: 286px;
			}
			
			#show_paper li,
			ul#list li {
				float: left;
				_display: inline;
				margin: 6px 8px 0 0;
				width: 74px;
				height: 74px;
				background: #f0f0f0;
			}
			
			#show_paper li a,
			ul#list li a {
				display: block;
				border: 1px solid #d3d3d3;
				height: 72px;
			}
			
			#show_paper li a:hover,
			ul#list li a:hover {
				border: 1px solid #e0a007;
			}
			
			#show_paper li img,
			ul#list li img {
				border: 1px solid #fff;
			}
			
			#stationery_div .design_btn_img {
				border-width: 0;
				width: 12px;
				height: 12px;
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/misc/xinzhi_icon1e9c5d.png) no-repeat -48px 0px;
				position: absolute;
				left: 32px;
				margin-top: 5px;
				*margin-top: 2px;
			}
			
			#stationery_div .disabled .design_btn_img {
				width: 0;
				height: 0;
			}
			
			@media only screen and (-webkit-min-device-pixel-ratio: 2),
			only screen and (min-device-pixel-ratio: 2) {
				#page_span img.arrow_tableft_disable {
					background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tableft_disable1e9c5d.gif) 1x, url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tableft_disable@2X1e9c5d.gif) 2x);
				}
				#page_span img.arrow_tableft {
					background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tableft1e9c5d.gif) 1x, url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tableft@2X1e9c5d.gif) 2x);
				}
				#page_span img.arrow_tabright_disable {
					background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tabright_disable1e9c5d.gif) 1x, url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tabright_disable@2X1e9c5d.gif) 2x);
				}
				#page_span img.arrow_tabright {
					background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tabright1e9c5d.gif) 1x, url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tabright@2X1e9c5d.gif) 2x);
				}
			}
			
			.qmEditorBase {
				width: 100%;
				height: 100%;
				border-collapse: collapse;
				border-right: 1px solid #c3c3c3;
				border-top: 1px solid #9a9a9a;
				border-left: 1px solid #9a9a9a;
				background: #fff;
			}
			
			.qmEditorBaseBd {
				border-top: 1px solid #c3c3c3;
				position: relative;
			}
			
			.qmEditorToolBar {
				border-bottom: none;
			}
			
			.qmEditorToolBarDiv {
				height: 100%;
				height: 20px;
				padding: 3px 2px;
				border-bottom: 1px solid #999;
				cursor: default;
			}
			
			.qmEditorToolBarItem {
				float: left;
				font-size: 1px;
				margin: 0 1px;
				margin: 0\9;
			}
			
			.settingDiv_div .qmEditorToolBarItem {
				line-height: 17px;
			}
			
			.qmEditorToolBarItemRight {
				float: right;
				font-size: 1px;
				margin: 0 3px;
				*margin: 1px 3px 0;
			}
			
			@media screen and (min-color-index:0) and(-webkit-min-device-pixel-ratio:0) {
				@media {
					.qmEditorContent {
						display: block;
					}
				}
			}
			
			.qmEditorText {
				height: 100%;
				border: none;
				margin: 0;
				font: normal 14px "lucida Grande", Verdana;
				line-height: 160%;
				word-break: break-all;
				white-space: pre-wrap;
				word-wrap: break-word;
				zoom: 1;
				width: 100%;
				resize: none;
				box-sizing: border-box;
				padding: 0 6px;
				*padding: 0;
			}
			
			.qmEditorDivEditArea {
				display: block;
				height: 100%;
				overflow: auto;
				padding: 1px 4px;
				font: normal 14px "lucida Grande", Verdana;
				background: #fff;
				line-height: 160%;
				word-break: break-all;
				white-space: pre-wrap;
				word-wrap: break-word;
				border-top: 1px solid #d4d4d4;
			}
			
			.qmEditorIfrmEditArea {
				display: block;
				width: 100%;
				height: 100%;
				border-top: 1px solid #d4d4d4;
				margin-bottom: 1px;
			}
			
			.qmEditorTBExternItem {}
			
			.qmEditorBtnIcon,
			.qmEditorMenuIcon {
				width: 24px;
				height: 17px;
				text-align: center;
				padding: 1px;
				border: none;
			}
			
			.qmEditorMenuIcon {
				overflow: hidden;
			}
			
			.qmEditorBtnIconOver {
				padding: 1px 0 0 1px;
				border-left: none;
				border-top: none;
				border-right: 1px solid gray;
				border-bottom: 1px solid gray;
			}
			
			.qmEditorBtnIconCheck,
			.qmEditorBtnIconPrevCheck {
				padding: 0;
				border-left: 1px solid gray;
				border-top: 1px solid gray;
				border-right: 1px solid white;
				border-bottom: 1px solid white;
			}
			
			.qmEditorBtnA,
			.qmEditorFormatting {
				padding: 2px 0 3px 8px;
				color: #039;
				font: normal 12px "lucida Grande", Verdana;
				cursor: pointer;
				white-space: nowrap;
				-moz-user-select: none
			}
			
			.qmEditorIcon {
				border: none;
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/editor_new1e9c5d.gif) no-repeat;
				width: 20px;
				height: 16px;
				overflow: hidden;
			}
			
			.qmEditorSeparate .qmEditorIcon {
				display: none;
			}
			
			.qmEditorBold .qmEditorIcon {
				background-position: 0px 0;
				width: 10px;
			}
			
			.qmEditorItalic .qmEditorIcon {
				background-position: -32px 0;
				width: 10px;
			}
			
			.qmEditorUnderline .qmEditorIcon {
				background-position: -63px 0;
				width: 10px;
			}
			
			.qmEditorFontName .qmEditorIcon {
				background-position: -95px 0;
				width: 18px;
			}
			
			.qmEditorFontSize .qmEditorIcon {
				background-position: -128px 0;
				width: 18px;
			}
			
			.qmEditorForeColor .qmEditorIcon {
				background-position: -159px 0;
				width: 18px;
			}
			
			.qmEditorBackColor .qmEditorIcon {
				background-position: -192px 0;
				width: 18px;
			}
			
			.qmEditorAlignMode .qmEditorIcon {
				background-position: -223px 2px;
				width: 20px;
			}
			
			.qmEditorSerial .qmEditorIcon {
				background-position: -256px 2px;
				width: 20px;
			}
			
			.qmEditorIndentMode .qmEditorIcon {
				background-position: -288px 2px;
				width: 20px;
			}
			
			.qmEditorformatblock {
				width: 20px;
			}
			
			.qmEditorformatblock .qmEditorIcon {
				background-position: -572px 1px;
				width: 16px;
			}
			
			.qmEditorCreateLink .qmEditorIcon {
				background-position: -318px 2px;
			}
			
			.qmEditorFullScreen .qmEditorIcon {
				background-position: -608px 2px;
				width: 12px;
			}
			
			.qmEditorFullScreenFull .qmEditorIcon {
				background-position: -640px 1px;
				width: 16px;
			}
			
			.qmEditorHtml .qmEditorIcon {
				background-position: -704px 2px;
				width: 22px;
			}
			
			.qmEditorSpellCheck .qmEditorIcon {
				background-position: -736px 3px;
				width: 23px;
			}
			
			.qmEditorSpellChecking .qmEditorIcon {
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/checking_loading1e9c5d.gif) center center no-repeat;
				background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/checking_loading1e9c5d.gif) 1x, url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/checking_loading_2x1e9c5d.gif) 2x);
				width: 23px;
			}
			
			.qmEditorFormatMatch .qmEditorIcon {
				background-position: -672px 1px;
				width: 13px;
			}
			
			.qmEditorJustifyLeft .qmEditorIcon {
				background-position: -350px 2px;
			}
			
			.qmEditorJustifyCenter .qmEditorIcon {
				background-position: -382px 2px;
			}
			
			.qmEditorJustifyRight .qmEditorIcon {
				background-position: -414px 2px;
			}
			
			.qmEditorInsertorDeredlist .qmEditorIcon {
				background-position: -446px 2px;
			}
			
			.qmEditorInsertunorDeredlist .qmEditorIcon {
				background-position: -478px 2px;
			}
			
			.qmEditorIndent .qmEditorIcon {
				background-position: -542px 2px;
			}
			
			.qmEditorOutdent .qmEditorIcon {
				background-position: -510px 2px;
			}
			
			.qmEditorBtnIconSeparate {
				width: 1px;
				padding: 0;
				margin: 3px 6px 0;
				height: 14px;
				background: #afafaf;
			}
			
			.qmEditorBtnIconBold {
				width: 20px;
			}
			
			.qmEditorBtnIconItalic {
				width: 20px;
			}
			
			.qmEditorBtnIconUnderline {
				width: 20px;
			}
			
			.qmEditorBtnIconFontName {
				width: 24px;
			}
			
			.qmEditorBtnIconFontSize {
				width: 24px;
			}
			
			.qmEditorBtnIconForeColor {
				width: 24px;
			}
			
			.qmEditorBtnIconBackColor {
				width: 24px;
				margin-right: 2px;
			}
			
			.qmEditorBtnIconAlignMode {
				width: 24px;
			}
			
			.qmEditorBtnIconSerial {
				width: 24px;
			}
			
			.qmEditorBtnIconIndent {
				width: 24px;
			}
			
			.qmEditorBtnIconCreateLink {
				width: 20px;
			}
			
			.qmEditorBtnIconPhoto {
				width: 24px;
			}
			
			.qmEditorScreenSnap {
				width: 24px;
			}
			
			.qmEditorBtnIconMo {
				width: 24px;
			}
			
			.qmEditorBtnIconMusic {
				width: 24px;
			}
			
			.qmEditorBtnText {
				width: 16px;
				border-width: 0px;
				height: 14px;
				margin: 2px 10px 0 0;
				padding: 1px 0;
			}
			
			.qmEditorBtnText .qmEditorIcon {
				font-size: 12px;
				cursor: pointer;
				margin-right: 5px;
			}
			
			.qmEditorMenuIcon {
				margin: -3px 0 0 0;
				height: 17px;
				*xheight: 19px;
			}
			
			.qmEditorMenuBorder {
				border: 1px outset;
				* border: 2px outset;
				position: absolute;
				z-index: 99;
				background: white;
				padding: 2px;
				font-size: 1px;
			}
			
			.qmEditorMenuItem,
			.qmEditorMenuItemOver,
			.qmEditorMenuItemCheck,
			.qmEditorMenuItemDisabled {
				width: 130px;
				height: 16px;
				line-height: 16px;
				padding: 2px;
				cursor: default;
				font: normal 12px "lucida Grande", Verdana;
			}
			
			.qmEditorMenuItem,
			.qmEditorMenuItem,
			.qmEditorMenuItemDisabled {
				padding: 3px;
			}
			
			.qmEditorMenuItemOver {
				border: 1px solid #000080;
				background: #FFEEC2;
				color: #036;
			}
			
			.qmEditorMenuItemCheck {
				border: 1px solid #9a9afb;
			}
			
			.qmEditorMenuItemDisabled {
				color: gray;
			}
			
			.qmEditorMenuColor {
				width: 10px;
				*width: 12px;
				height: 10px;
				*height: 12px;
				font-size: 1px;
				border: 1px solid #a6a6a6;
			}
			
			.qmEditorMenuPanel {
				font-size: 12px;
				padding: 3px;
			}
			
			.qmEditorButton1 .qmEditorButton2 {
				font-size: 12x;
				height: auto;
				*height: 22px;
				line-height: auto;
				*line-height: 18px;
				padding: 0 8px;
				*padding: 0;
			}
			
			.qmEditorButton1 {
				width: 52px;
				margin: 1px 2px 0 0
			}
			
			.qmEditorButton2 {
				width: 76px;
				*width: 72px;
				margin: 1px 2px 0 0
			}
			
			.qmEditorCLNameDef {
				color: gray;
			}
			
			.qmEditorCLNameMdf {
				color: black;
			}
			
			.qmEditorFormatting {
				text-decoration: none;
				color: gray;
			}
			
			.qmEditorFormatBtn {
				float: left;
				padding: 2px 0 3px 5px;
				* padding: 1px 0 3px 5px;
			}
			
			.qmEditorLinkDiv {
				padding-bottom: 5px;
			}
			
			.qmEditorLinkBtn {
				margin-left: 3px;
			}
			
			.qmEditorLinkButton {
				text-align: right;
			}
			
			.qmEditorMenuStatusItem {
				padding: 5px 10px 5px 0;
				cursor: pointer;
			}
			
			.qmEditorMenuIconStatusItem {
				padding: 5px 10px 5px 0;
				cursor: pointer;
			}
			
			.qmEditorMenuIconStatusItem .qmEditorIcon {
				position: relative;
				top: -1px;
				top: -2px\9;
				left: -5px;
				cursor: pointer;
			}
			
			.menubarbg {
				background-image: url("https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/mailcomposetool24f760.png");
				_background-image: url("https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/mailcomposetool_ie24f760.png");
			}
			
			.editormenubar {
				background-position: 0 -128px;
				background-repeat: repeat-x;
				height: 23px;
				padding: 4px;
				position: absolute;
				border: 1px solid #555;
				-moz-box-shadow: 0 1px 1px #999;
				-moz-border-radius: 5px;
			}
			
			.imgzoomoriginal {
				float: left;
				_display: inline;
				margin: 0 5px;
				width: 21px;
				height: 23px;
				background-position: -128px -93px;
				background-repeat: no-repeat;
			}
			
			.imgzoomoriginal:hover {
				background-position: -159px -93px;
			}
			
			.imgzoomout {
				float: left;
				_display: inline;
				margin: 0 5px;
				width: 21px;
				height: 23px;
				background-position: 0 -30px;
				background-repeat: no-repeat;
			}
			
			.imgzoomout:hover {
				background-position: -33px -31px;
			}
			
			.imgzoomin {
				float: left;
				_display: inline;
				margin: 0 5px;
				width: 21px;
				height: 23px;
				background-position: -63px -30px;
				background-repeat: no-repeat;
			}
			
			.imgzoomin:hover {
				background-position: -96px -31px;
			}
			
			.imgzoombar {
				float: left;
				_display: inline;
				width: 66px;
				margin: 10px 0 0;
				height: 3px;
				background-position: -32px 0;
				position: relative;
			}
			
			.imgzoombar .zoomhandle {
				position: absolute;
				width: 11px;
				height: 17px;
				top: -7px;
				left: 29px;
				background-position: -126px -30px;
			}
			
			.imgzoombar .zoomhandle:hover {
				background-position: -159px -31px;
			}
			
			.menubarrotate {
				float: left;
				_display: inline;
				margin: 0 3px;
				width: 22px;
				height: 23px;
				background-position: -191px -64px;
				background-repeat: no-repeat;
			}
			
			.menubarrotate:hover {
				background-position: -224px -64px;
			}
			
			.menubarremove {
				float: left;
				_display: inline;
				margin: 0 5px;
				width: 19px;
				height: 23px;
				background-position: -191px -31px;
				background-repeat: no-repeat;
			}
			
			.menubarremove:hover {
				background-position: -224px -32px;
			}
			
			.menubarspl {
				float: left;
				_display: inline;
				width: 2px;
				height: 25px;
				margin: -1px 3px 0;
				background-position: 0 0;
				background-repeat: no-repeat;
			}
			
			a.menubarlink:link,
			a.menubarlink:visited {
				float: left;
				margin: 0 3px;
				line-height: 23px;
				color: #DDD;
				text-decoration: underline;
			}
			
			a.menubarlink:hover {
				color: #FFF;
			}
			
			.menubariconlink {
				float: left;
				_display: inline;
				margin: 0 5px;
				width: 22px;
				height: 23px;
				background-position: 0 -57px;
			}
			
			.linkmodify {
				float: left;
				_display: inline;
				margin: 0 3px;
				width: 23px;
				height: 23px;
				background-position: -31px -63px;
			}
			
			.linkmodify:hover {
				background-position: -64px -64px;
			}
			
			.menubarpreview {
				float: left;
				_display: inline;
				margin: 0 5px;
				width: 23px;
				height: 23px;
				background-position: -191px -92px;
				background-repeat: no-repeat;
			}
			
			.menubarpreview:hover {
				background-position: -224px -93px;
			}
			
			.menubarinput {
				float: left;
				_display: inline;
				margin: 1px 7px 0 5px;
				width: 200px;
			}
			
			.menubarfinish {
				float: left;
				_display: inline;
				margin: 0 5px;
				width: 24px;
				height: 23px;
				background-position: -95px -62px;
			}
			
			.menubarfinish:hover {
				background-position: -128px -63px;
			}
			
			.menubariconimg {
				float: left;
				_display: inline;
				margin: 0 2px 0 5px;
				width: 24px;
				height: 23px;
				background-position: -63px -94px;
			}
			
			.menubariconimg:hover {
				background-position: -95px -94px;
			}
			
			.menubariconlink2 {
				float: left;
				_display: inline;
				margin: 0 5px 0 2px;
				width: 24px;
				height: 23px;
				background-position: 1px -89px;
			}
			
			.menubariconlink2:hover {
				background-position: -31px -89px;
			}
			
			@media all and (-webkit-min-device-pixel-ratio:10000),
			not all and (-webkit-min-device-pixel-ratio:0) {
				head~body #QMEditorArea {
					margin-bottom: 28px;
				}
			}
			
			.qmpanel_shadow .arrow {
				position: absolute;
				top: -4px;
				width: 11px;
				height: 11px;
				overflow: hidden;
				border: 1px solid #bababa;
				background: #FFFFFF;
				clip: rect(-3px, 10px, 10px, -3px);
				-moz-box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
				-webkit-box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
				-o-box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
				box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
				-moz-transform: rotate(45deg);
				-webkit-transform: rotate(45deg);
				-o-transform: rotate(45deg);
				transform: rotate(45deg);
				top: -10px\9;
				clip: rect(-3px 100px 100px -3px)\9;
				clip: rect(-3px 100px 100px -3px)\9\0;
				filter: progid:DXImageTransform.Microsoft.Matrix(Dx=-2, Dy=12, M11=0.7, M12=0.7, M21=-0.7, M22=0.7);
			}
			
			@media screen and (-webkit-min-device-pixel-ratio:0) {
				.qmpanel_shadow .arrow {
					clip: rect(-3px, 10px, 10px, -3px);
				}
			}
			
			@media screen and (-ms-high-contrast:active),
			(-ms-high-contrast:none) {
				.qmpanel_shadow .arrow {
					top: -4px;
					clip: rect(-3px, 10px, 10px, -3px);
				}
			}
			
			.qmpanel_shadow .btn_close {
				position: absolute;
				z-index: 3;
				right: 8px;
				top: 8px;
				width: 13px;
				height: 13px;
				overflow: hidden;
				vertical-align: middle;
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/mail327a44.png) no-repeat scroll -96px -19px;
				-moz-border-radius: 2px;
				-webkit-border-radius: 2px;
				-o-border-radius: 2px;
				border-radius: 2px;
			}
			
			.qmpanel_shadow .btn_close:hover {
				background-position: -107px -19px;
				background-color: #999;
			}
			
			.qmpanel_shadow .btn_close:active {
				opacity: 0.6;
				filter: alpha(opacity=60);
			}
			
			ul.qmEditorToolTab {
				position: relative;
				height: 25px;
				padding: 9px 0 1px 9px;
				overflow: hidden;
				zoom: 1;
			}
			
			.qmEditorToolTab .sepLine {
				position: absolute;
				left: 0;
				top: 34px;
				height: 1px;
				width: 100%;
				overflow: hidden;
				margin: 0;
				_padding-right: 9px;
				background: #CED1D7;
			}
			
			.qmEditorToolTab li {
				float: left;
				list-style: none;
			}
			
			.qmEditorToolTab a {
				display: inline-block;
				min-width: 42px;
				_width: 42px;
				white-space: nowrap;
				margin-right: -1px;
				padding: 0 12px;
				border: 1px solid #CED1D7;
				border-width: 1px 1px 0;
				line-height: 24px;
				text-align: center;
				background: #F5F5F5;
			}
			
			.qmEditorToolTab a:link,
			.qmEditorToolTab a:hover {}
			
			.qmEditorToolTab a.on,
			.qmEditorToolTab a.on:hover {
				position: relative;
				z-index: 2;
				margin-top: -3px;
				line-height: 28px;
				text-decoration: none;
				color: #494949;
				background: #FFFFFF;
				font-weight: bold;
				-moz-box-shadow: 0 0 2px #BABABA;
				-webkit-box-shadow: 0 0 2px #BABABA;
				-o-box-shadow: 0 0 2px #BABABA;
				box-shadow: 0 0 3px rgba(0, 0, 0, 0.15);
			}
			
			.qzone_container {
				width: 362px;
			}
			
			.qmEditorMoOuter {}
			
			.qmEditorMoPadding {
				padding: 6px 6px 2px;
			}
			
			.qmEditorMoLoading {
				float: left;
				font: normal 12px Verdana;
				display: none;
				padding-top: 8px;
				color: gray;
			}
			
			.qmEditorMoPageCntr {
				font-size: 12px;
				color: #000;
				cursor: default;
				padding: 1px 5px 1px 0;
			}
			
			.qmEditorMoPage {
				margin-top: 7px;
				color: #000;
				border: none;
				background: transparent;
				margin-right: 2px;
				filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#ffffff');
			}
			
			.qmEditorMoTurnPage {
				border: none;
				width: 50px;
				height: 18px;
				background: #fff;
				cursor: pointer;
				text-align: center;
				filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#ffffff');
			}
			
			.qmEditorMoTurnPage:active,
			.qmEditorMoPage:active {
				background: #fff;
				filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#ffffff');
			}
			
			.qmEditorMoPreview {
				background: #fff;
				position: absolute;
				left: 0;
				top: 0;
				border: 1px solid #004B97;
				text-align: center;
				overflow: hidden;
			}
			
			.qmEditorToolLoading {
				text-align: center;
				padding: 36px 0;
			}
			
			.qmEditorAlbumsSelect {}
			
			.qmEditorPicContent {
				padding: 10px;
			}
			
			.qmEditorPicContent .bd {
				box-shadow: 0 0 3px rgba(0, 0, 0, 0.2);
			}
			
			.qmEditorPicSelect {
				padding: 1px;
				margin: 2px;
				background-color: #ececec;
				border: 1px solid #fff;
				width: 100px;
				height: 75px;
				overflow: hidden;
			}
			
			.qmEditorPicSelect table {
				width: 100%;
				height: 100%;
				overflow: hidden;
				margin-top: -212px;
			}
			
			.qmEditorPicSelect table td {
				text-align: center;
				line-height: 0;
				height: 500px;
				vertical-align: middle;
			}
			
			.qm_addinput {
				height: 22px;
				line-height: 1;
				border-width: 1px;
				border-color: #9a9a9a #7c7c7c #c3c3c3 #c3c3c3;
				box-shadow: 0 1px 1px #d4d4d4 inset;
				margin: 0 5px 0 0;
				padding: 0 5px;
				padding: 5px\9;
				height: 12px\9;
				width: 295px;
				border-radius: 3px;
				background: #FFFFFF;
			}
			
			#qzoneimgAlbum {
				margin: -3px 0 0 5px;
			}
			
			.qzoneimgData {
				height: 242px;
				*height: 262px;
				overflow-y: auto;
				padding: 10px;
			}
			
			.qmEditorMusicCntr {
				width: 320px;
				color: #494949;
				overflow: hidden;
			}
			
			.qmEditorMusicHead {
				padding: 13px 8px 15px 17px;
			}
			
			.qmEditorMusicLogo {
				float: left;
				_display: inline;
				margin-top: -9px;
				padding: 0 0 7px 17px;
				display: none;
			}
			
			.qmEditorMusicSearch {
				padding: 0 0 18px 17px;
			}
			
			.qmEditorMusicTxt {
				float: left;
				width: 214px;
			}
			
			a.qmEditorMusicBtn {
				float: left;
				width: 55px;
			}
			
			.qmEditorMusicData {
				margin-top: -6px;
				zoom: 1;
			}
			
			.qmEditorMusicData ul {
				height: 140px;
			}
			
			.qmEditorMusicResult {
				border-top: 1px solid #DDDDDD;
				text-align: center;
			}
			
			.qmEditorMusicResultTxt {
				display: inline-block;
				position: relative;
				left: -2px;
				top: -9px;
				padding: 0 16px;
				color: #C4C4C4;
				background: #FFFFFF;
			}
			
			.qmEditorMusicInfo {
				padding: 5px 0 18px;
				text-align: center;
			}
			
			.qmEditorMusicOpt {
				position: relative;
				height: 30px;
				margin-bottom: -16px;
				padding: 8px 11px;
			}
			
			a.qmEditorMusicItem,
			a.qmEditorMusicItem:visited,
			a.qmEditorMusicItem:link {
				display: block;
				padding: 0 19px;
				border-bottom: 1px solid #EAEAEA;
				color: #494949;
				line-height: 27px;
				overflow: hidden;
				text-overflow: ellipsis;
				white-space: nowrap;
				_width: 282px;
			}
			
			a.qmEditorMusicItem:hover {
				text-decoration: none;
				background: #F0F1F1;
			}
			
			.qmEdMap_head {
				padding: 20px 0;
				text-align: center;
			}
			
			.qmEdMap_search {
				position: relative;
				width: 427px;
				margin: 0 auto;
				text-align: left;
				overflow: hidden;
				*zoom: 1;
			}
			
			.qmEdMap_search .qm_addinput {
				float: left;
				width: 356px;
				margin-right: 5px;
				_width: 353px;
			}
			
			.qmEdMap_search .button_gray_s {
				float: left;
				width: 52px;
			}
			
			.qmEdMap_searchPlaceholder {
				position: absolute;
				top: 4px;
				*top: 5px;
				left: 6px;
				color: #999;
				cursor: text;
			}
			
			.qmEdMap_bg {
				height: 126px;
				margin-top: 80px;
				background-image: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/editor_map248228.png);
				background-repeat: no-repeat;
				background-position: 130px 0;
			}
			
			.qmEdMap_resultTitle {
				position: relative;
				border-top: 1px solid #ddd;
			}
			
			.qmEdMap_resultTitleText {
				position: absolute;
				left: 50%;
				top: -9px;
				width: 100px;
				margin-left: -50px;
				line-height: normal;
				text-align: center;
				color: #c4c4c4;
				background: #fff;
			}
			
			.qmEdMap_resultList {
				position: relative;
				height: 317px;
				margin: 10px 0 8px;
				overflow-x: hidden;
				overflow-y: auto;
			}
			
			.qmEdMap_resultList .itemSplit {
				position: absolute;
				left: 0;
				width: 100%;
				height: 10px;
				line-height: 0;
				background: #fff;
			}
			
			.qmEdMap_resultList .itemSplit_Top {
				top: 0;
			}
			
			.qmEdMap_resultList .itemSplit_Bottom {
				bottom: 0;
			}
			
			.qmEdMap_resultItem a {
				display: block;
				padding: 5px 20px 4px;
				line-height: 20px;
				border-bottom: 1px solid #eaeaea;
				_width: 411px;
			}
			
			.qmEdMap_resultItem a:hover {
				background: #f0f1f1;
				text-decoration: none;
			}
			
			.qmEdMap_resultItem .title,
			.qmEdMap_resultItem .text {
				display: block;
				overflow: hidden;
				white-space: nowrap;
				text-overflow: ellipsis;
				-o-text-overflow: ellipsis;
				word-break: break-all;
				color: #a4a4a4;
				_width: 411px;
			}
			
			.qmEdMap_resultItem .title {
				color: #000;
			}
			
			.qmEdMap_resultLocation {
				padding: 20px 20px 0;
				overflow: hidden;
			}
			
			.qmEdMap_resultMap {
				position: relative;
				height: 250px;
				border: 1px solid #b0b0b0;
				overflow: hidden;
			}
			
			.qmEdMap_resultMapList {
				position: absolute;
				left: 0;
				width: 100%;
			}
			
			.qmEdMap_resultMapControl {
				width: 16px;
				height: 33px;
				margin: 11px 0 0 13px;
				background-color: #fff;
				border: 1px solid #d7d7d7;
				border-color: rgba(0, 0, 0, .2);
				border-radius: 2px;
			}
			
			.qmEdMap_resultMapControl_btn {
				display: block;
				height: 16px;
				background: url(zh_CN/htmledition/images/common.png) no-repeat -48px 0;
			}
			
			.qmEdMap_resultMapControl_btn:hover {
				text-decoration: none;
			}
			
			.qmEdMap_resultMapControl_btn_Increase {
				border-bottom: 1px solid #ccc;
			}
			
			.qmEdMap_resultMapControl_btn_Decrease {
				background-position: -64px 0;
			}
			
			.qmEdMap_resultItem_MapWrap {
				position: relative;
			}
			
			.qmEdMap_resultItem_MapWrap .mask {
				position: absolute;
				top: 0;
				left: 0;
				bottom: 0;
				right: 0;
				width: 100%;
				_height: 204px;
				background: #000;
				opacity: .9;
				-moz-opacity: .9;
				filter: Alpha(Opacity=90);
				-ms-filter: alpha(opacity=90);
			}
			
			.qmEdMap_resultItem_MapWrap .listWrap {
				position: relative;
				height: 204px;
				overflow-x: hidden;
				overflow-y: auto;
			}
			
			.qmEdMap_resultItem_MapWrap .listWrap::-webkit-scrollbar {
				width: 15px;
			}
			
			.qmEdMap_resultItem_MapWrap .listWrap::-webkit-scrollbar-button {
				width: 0;
				height: 0;
				display: none
			}
			
			.qmEdMap_resultItem_MapWrap .listWrap::-webkit-scrollbar-corner {
				background-color: transparent;
			}
			
			.qmEdMap_resultItem_MapWrap .listWrap::-webkit-scrollbar-thumb {
				background-color: #7b7b7b;
				border-radius: 10px;
				border: 3px solid #494949;
				border-top-width: 2px;
				border-bottom-width: 2px;
			}
			
			.qmEdMap_resultItem_MapWrap .listWrap::-webkit-scrollbar-thumb:hover {
				background-color: #a3a3a3;
				border-radius: 10px;
			}
			
			.qmEdMap_resultItem_MapWrap .listWrap::-webkit-scrollbar-track {
				background-color: #494949;
			}
			
			.qmEdMap_resultItem_Map a {
				padding: 4px 10px;
				line-height: 16px;
				border-color: #505050;
				_width: 390px;
			}
			
			.qmEdMap_resultItem_Map a:hover {
				background: #505050;
			}
			
			.qmEdMap_resultItem_Map .more {
				float: right;
				position: relative;
				width: 50px;
				height: 36px;
				border-left: 1px solid #505050;
				padding-left: 0;
				padding-right: 0;
			}
			
			.qmEdMap_resultItem_Map .trangle {
				position: absolute;
				top: 20px;
				left: 18px;
				display: block;
				content: " ";
				width: 0;
				line-height: 0;
				font-size: 0;
				border-style: solid;
				border-color: transparent;
				border-width: 6px;
				_border-color: red;
				_filter: chroma(color=red);
			}
			
			.qmEdMap_resultItem_Map .trangle_top {
				border-top: 0;
				border-bottom-color: #fff;
				_border-bottom-color: #fff;
			}
			
			.qmEdMap_resultItem_Map .trangle_down {
				border-bottom: 0;
				border-top-color: #fff;
				_border-top-color: #fff;
			}
			
			.qmEdMap_resultItem_Map .now {
				background: none!important;
				cursor: default;
				overflow: hidden;
				_float: left;
			}
			
			.qmEdMap_resultItem_Map .now .text {
				color: #a4a4a4;
			}
			
			.qmEdMap_resultItem_Map .text,
			.qmEdMap_resultItem_Map .title {
				_width: 390px;
			}
			
			.qmEdMap_resultItem_Map .title {
				color: #fff;
			}
			
			.qmEdMap_resultItem_MapWrap_Curr .mask {
				_height: 46px;
				opacity: .8;
				-moz-opacity: .8;
				filter: Alpha(Opacity=80);
				-ms-filter: alpha(opacity=80);
			}
			
			.qmEdMap_resultItem_MapWrap_Curr ul {
				position: relative;
				_height: 46px;
				_overflow: hidden;
			}
			
			.qmEdMap_resultItem_MapWrap_Curr .qmEdMap_resultItem_Map {
				border-top: 1px solid #505050;
				_zoom: 1;
			}
			
			.qmEdMap_resultItem_MapWrap_Curr a {
				width: 354px;
				height: 36px;
				padding: 5px 10px 3px;
				line-height: 18px;
			}
			
			.qmEdMap_resultItem_MapWrap_Curr .title,
			.qmEdMap_resultItem_MapWrap_Curr .text {
				_width: 354px;
			}
			
			.qmEdMap_resultAddBtn {
				display: block;
				width: 145px;
				height: 30px;
				margin: 15px auto;
				line-height: 30px;
				text-align: center;
				background: #5d99db;
				border: 1px solid #5293db;
				-moz-border-radius: 3px;
				-khtml-border-radius: 3px;
				-webkit-border-radius: 3px;
				border-radius: 3px;
				color: #fff!important;
				text-decoration: none!important;
			}
			
			.qmEdMap_resultEmpty,
			.qmEdMap_resultLoading {
				position: relative;
				height: 335px;
				overflow: hidden;
			}
			
			.qmEdMap_resultEmptyTips {
				position: absolute;
				top: 50%;
				margin-top: -10px;
				width: 100%;
				line-height: 20px;
				text-align: center;
				color: #000;
			}
			
			.qmEdMap_resultLoading img {
				position: absolute;
				top: 50%;
				left: 50%;
				margin: -16px 0 0 -16px;
			}
			
			.qmEdMap_iconLocation {
				display: inline-block;
				width: 42px;
				height: 34px;
				background-size: 100% 100%;
				background-image: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/icon_location24c44c.png);
				background-repeat: no-repeat;
				_width: 22px;
				_height: 32px;
				_background-image: url(../images/newicon/icon_location_ie6.png);
			}
			
			.QMEditorToolPop .qmEditorHead {
				color: #494949;
				padding: 10px 10px 10px 15px;
				border-bottom: 1px solid #bababa;
				text-align: left;
			}
			
			.editor_btn {
				position: relative;
				margin-right: 14px;
				display: inline-block;
				white-space: nowrap;
			}
			
			.editor_btn_text {
				display: inline-block;
				padding: 0 0 2px 18px;
				padding-top: 1px\0;
				*padding: 2px 0 0 18px;
				width: auto;
				height: auto;
			}
			
			.MacOS .editor_btn_text {
				padding-top: 1px;
			}
			
			.menu_bd .editor_btn_text {
				padding-top: 0;
				padding-bottom: 0;
			}
			
			.editor_btn .ico_moreupload {
				margin-left: 3px;
				cursor: pointer;
			}
			
			.qmEditorNetDisk,
			.qmEditorPhoto,
			.qmEditorScreenSnap,
			.qmEditorMo,
			.qmEditorMusic,
			.qmEditorWord,
			.qmEditorTxtStyle,
			.qmEditorMore,
			.qmEditorMap,
			.qmEditorVote,
			.icon_editor_arrow_up,
			.icon_editor_arrow_down {
				background-image: url(images/compose27b687.png);
				background-repeat: no-repeat;
			}
			
			.qmEditorNetDisk {
				background-position: 0 -576px;
			}
			
			.qmEditorPhoto {
				background-position: 0 -72px;
			}
			
			.qmEditorScreenSnap {
				background-position: 0 -119px;
			}
			
			.qmEditorScreenSnapDisable {
				background-position: 0 -287px;
			}
			
			.qmEditorMo {
				background-position: 0 -96px;
			}
			
			.qmEditorToolBarItem .qmEditorMo {
				background-position: 4px -94px;
			}
			
			.qmEditorMusic {
				background-position: 0 -144px;
			}
			
			.menu_bd .qmEditorMusic {
				background-position: 0 -142px;
			}
			
			.qmEditorWord {
				background-position: 1px -623px;
			}
			
			.qmEditorTxtStyle {
				background-position: 0 -167px;
			}
			
			.qmEditorMore {
				background-position: 0 -668px;
			}
			
			.qmEditorMap {
				background-position: 0 -691px;
			}
			
			.menu_item_high .qmEditorMap {
				background-position: 0 -741px;
			}
			
			.qmEditorVote {
				background-position: 0 -716px;
			}
			
			.icon_editor_arrow_up,
			.icon_editor_arrow_down {
				display: inline-block;
				width: 6px;
				height: 12px;
				vertical-align: top;
				position: relative;
				top: 2px;
				background-position: 0 -648px;
			}
			
			.icon_editor_arrow_down {
				background-position: -12px -648px;
			}
			
			.qmEditorResume {
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/compose207c92.png) 0 -682px no-repeat;
			}
			
			.qmEditorPhotoWrap {
				margin-right: 11px;
			}
			
			.editor_btn .qmEditorPhoto {
				padding-left: 20px;
			}
			
			.editor_btn .qmEditorMo {
				padding-left: 20px;
			}
			
			.editor_btn .qmEditorTxtStyle {
				padding-top: 0\9;
				_padding-top: 2px;
			}
			
			.qmEditorMo .qmEditorIcon {
				background-position: 5px -94px;
			}
			
			.qmEditorPhoto .qmEditorIcon {
				background-position: 5px -94px;
			}
			
			.qmEditorScreenSnap .qmEditorIcon {
				background-position: 5px -94px;
			}
			
			.editor_netdisk_btn {
				display: none;
			}
			
			.editor_netdisk_open .editor_netdisk_btn {
				display: inline-block;
			}
			
			.editor_netdisk_open .editor_netdisk_txtmini {
				display: none;
			}
			
			.qmEditorToolBarItem .qmEditorPhoto,
			.qmEditorToolBarItem .qmEditorScreenSnap,
			.qmEditorToolBarItem .qmEditorMo,
			.qmEditorToolBarItem .qmEditorWord {
				background: none;
			}
			
			.qmEditorToolBarItem .qmEditorPhoto .qmEditorIcon {
				width: 24px;
				background-position: -766px 2px;
			}
			
			.qmEditorToolBarItem .qmEditorScreenSnap .qmEditorIcon {
				width: 22px;
				background-position: -796px 2px;
			}
			
			.qmEditorToolBarItem .qmEditorBtnIconMo .qmEditorIcon {
				width: 14px;
				background-position: -832px 2px;
			}
			
			.qmEditorToolBarItem .qmEditorBtnIconWord .qmEditorIcon {
				width: 12px;
				background-position: -864px 2px;
			}
			
			@media only screen and (-webkit-min-device-pixel-ratio:2),
			only screen and (min-device-pixel-ratio:2) {
				.qmEditorNetDisk,
				.qmEditorPhoto,
				.qmEditorScreenSnap,
				.qmEditorMo,
				.qmEditorMusic,
				.qmEditorWord,
				.qmEditorTxtStyle,
				.qmEditorMore,
				.qmEditorMap,
				.qmEditorVote,
				.icon_editor_arrow_up,
				.icon_editor_arrow_down {
					background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/compose27b687.png) 1x, url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/compose_2x27b687.png) 2x);
				}
				.menu_item_high .qmEditorMap {
					background-position: 0 -691px;
				}
				.qmEditorResume {
					background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/compose207c92.png) 1x, url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/compose@2X211f08.png) 2x);
				}
				.qmEditorToolBarItem .qmEditorPhoto,
				.qmEditorToolBarItem .qmEditorScreenSnap,
				.qmEditorToolBarItem .qmEditorMo,
				.qmEditorToolBarItem .qmEditorWord {
					background: none;
				}
				.qmEditorIcon {
					background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/editor_new1e9c5d.gif) 1x, url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/editor_new@2X1e9c5d.gif) 2x);
				}
				.qmEdMap_bg {
					background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/editor_map248228.png) 1x, url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/editor_map_2x24825d.png) 2x);
				}
				.qmEdMap_iconLocation {
					background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/icon_location24c44c.png) 1x, url(https://rescdn.qqmail.com/zh_CN/htmledition/images/../js/com/kits/qmeditor/base/images/newicon/icon_location_2x24c44c.png) 2x);
				}
				.qmEdMap_resultMapControl_btn {
					background-image: -webkit-image-set(url(zh_CN/htmledition/images/common.png) 1x, url(zh_CN/htmledition/images/common_2x.png) 2x);
				}
			}
			
			.p-otherdisk p,
			.p-otherdisk input {
				margin: 0;
				padding: 0;
			}
			
			.p-otherdisk h1,
			.p-otherdisk h2,
			.p-otherdisk h3,
			.p-otherdisk h4,
			.p-otherdisk h5,
			.p-otherdisk h6 {
				margin: 0;
				font-size: 100%;
			}
			
			.p-otherdisk img {
				border: none;
			}
			
			.p-otherdisk .cf:after {
				clear: both;
				display: block;
				height: 0;
				visibility: hidden;
			}
			
			.p-otherdisk .cf {
				zoom: 1;
			}
			
			.p-otherdisk .cl {
				clear: both;
			}
			
			.p-otherdisk .hide {
				display: none;
			}
			
			.p-otherdisk .fl {
				float: left;
				display: inline;
			}
			
			.p-otherdisk .fr {
				float: right;
				display: inline;
			}
			
			.p-otherdisk .btn_gray {}
			
			.p-otherdisk .btn_blue {}
			
			.p-otherdisk .icons {
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/xdisk/bind_disk/icons1e9c5d.png) no-repeat;
			}
			
			.p-otherdisk .ico_succ,
			.p-otherdisk .ico_error {
				width: 12px;
				height: 12px;
				display: inline-block;
				vertical-align: middle;
				margin: -2px 5px 0 0;
				*margin: 1px 5px 0 0;
				font-size: 0px;
				_vertical-align: baseline;
			}
			
			.p-otherdisk .ico_succ {
				background-position: -12px 0;
			}
			
			.p-otherdisk .ico_error {
				background-position: 0px 0;
			}
			
			.img_thumb {
				width: 38px;
				height: 38px;
				overflow: hidden;
				float: left;
				margin: 4px 4px 0 0;
			}
			
			.img_thumb .img_inner {
				width: 160px;
				height: 160px;
				margin: -61px 0 0 -61px;
				text-align: center;
			}
			
			.img_thumb img.od_fileimg {
				vertical-align: middle;
				margin: 0;
				float: none;
			}
			
			.img_thumb .alpha_span {
				display: inline-block;
				vertical-align: middle;
				height: 100%;
				width: 0;
			}
			
			.bind_select_box {
				height: 250px;
				padding: 30px 25px 0px;
				background-color: #fff;
				border-bottom-left-radius: 5px;
				border-bottom-right-radius: 5px;
			}
			
			.bind_select_box .select_txt {
				padding: 5px 0 20px;
				color: #000;
			}
			
			.menu_item_nofun .bind_select_box {
				padding: 16px 10px 0 8px;
			}
			
			.p-otherdisk .bind_items {
				margin-left: -50px;
				text-align: center;
			}
			
			.bind_li {
				position: relative;
				display: inline-block;
				*display: inline;
				*zoom: 1;
				width: 118px;
				margin-left: 50px;
				vertical-align: top;
			}
			
			.bind_item {
				display: block;
				padding-top: 100px;
				padding-bottom: 8px;
				color: #ccc;
				text-decoration: none;
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/xdisk/bind_disk/weiyun26f1bf.png) no-repeat center 20px;
				border: 1px solid #ccc;
				border-radius: 3px;
				_zoom: 1;
				-webkit-transition: box-shadow linear .2s;
				-moz-transition: box-shadow linear .2s;
				transition: box-shadow linear .2s;
			}
			
			@media only screen and (-webkit-min-device-pixel-ratio:2),
			only screen and (min-device-pixel-ratio:2) {
				.bind_item {
					background-image: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/xdisk/bind_disk/weiyun_2x26f143.png);
					background-size: 78px 70px;
				}
			}
			
			.bind_item:hover {
				text-decoration: none;
				box-shadow: 0 0 5px #60caff;
				border-color: #52a8ec;
			}
			
			.bind_item_dropbox {
				background-image: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/xdisk/bind_disk/dropbox1e9c5d.png);
			}
			
			.bind_name,
			.bind_tips {
				line-height: 20px;
				padding: 0 10px;
				color: #000;
			}
			
			.bind_tips {
				color: #999;
			}
			
			.bind_items .has_bind {
				width: 37px;
				height: 37px;
				position: absolute;
				left: 1px;
				top: 1px;
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/xdisk/bind_disk/has_bind1e9c5d.png) no-repeat;
				z-index: 10;
			}
			
			.other_disk_box {
				padding: 25px 25px 0px;
				height: 338px;
				background: #fff;
				position: relative;
			}
			
			.disk_content {
				height: 300px;
				background: #f9f9f9;
				border: 1px solid #cbcbcb;
				overflow: auto;
			}
			
			.od_items .od_item {
				_zoom: 1;
			}
			
			.od_items .od_item {
				-webkit-user-select: none;
				-moz-user-select: none;
				-o-user-select: none;
				user-select: none;
			}
			
			.od_items .od_item_inner {
				display: block;
				height: 46px;
				padding: 0 10px 0 0;
				line-height: 46px;
				line-height: 46px\9;
				overflow: hidden;
				color: #000;
				cursor: default;
				_zoom: 1;
				outline: none;
				border-bottom: 1px solid #bbb;
			}
			
			.od_list_index .od_item_inner {
				padding-left: 22px;
			}
			
			.od_list_index .od_list_index .od_item_inner {
				padding-left: 44px;
			}
			
			.od_list_index .od_list_index .od_list_index .od_item_inner {
				padding-left: 66px;
			}
			
			.od_list_index .od_list_index .od_list_index .od_list_index .od_item_inner {
				padding-left: 88px;
			}
			
			.od_list_index .od_list_index .od_list_index .od_list_index .od_list_index .od_item_inner {
				padding-left: 110px;
			}
			
			.od_list_index .od_list_index .od_list_index .od_list_index .od_list_index .od_list_index .od_item_inner {
				padding-left: 132px;
			}
			
			.od_list_index .od_list_index .od_list_index .od_list_index .od_list_index .od_list_index .od_list_index .od_item_inner {
				padding-left: 154px;
			}
			
			.od_items .od_checkbox {
				float: left;
				_display: inline;
				width: 13px;
				height: 13px;
				margin: 17px 5px 0 6px;
				overflow: hidden;
				cursor: default;
				*zoom: 1;
			}
			
			.od_items .od_list_index .od_checkbox {
				margin-left: 0;
			}
			
			.od_items .od_fileimg {
				float: left;
				margin: 6px 4px 0 0;
				_display: inline;
			}
			
			.od_items .od_label {
				display: block;
				white-space: nowrap;
				text-overflow: ellipsis;
				overflow: hidden;
				_width: 50%;
				_vertical-align: baseline;
			}
			
			.od_items .od_big .od_label,
			.od_items .od_big .od_fileimg {
				opacity: 0.4;
				filter: alpha(opacity=40);
			}
			
			.file_num {
				color: #a0a0a0;
				float: left;
				margin-left: 16px;
				_display: inline;
			}
			
			.disk_limit {
				line-height: 32px;
				color: #a0a0a0;
			}
			
			.od_filesize {
				width: 70px;
				text-align: right;
				margin-top: 1px;
				margin-left: 6px;
				color: #999;
			}
			
			.od_lastline {
				position: absolute;
				font-size: 0;
				overflow: hidden;
				border-top: 1px solid #f9f9f9;
				height: 0px;
				left: 26px;
				width: 388px;
				bottom: 37px;
				_bottom: 36px;
			}
			
			.od_items .od_imgopen {
				width: 7px;
				height: 7px;
				display: inline-block;
				float: left;
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/xdisk/bind_disk/icons1e9c5d.png) no-repeat;
			}
			
			.od_items .expand .od_imgopen {
				background-position: 0 -15px;
				margin: 21px 8px 0 8px;
			}
			
			.od_items .fold .od_imgopen {
				background-position: -9px -13px;
				margin: 20px 6px 0 10px;
			}
			
			.link_error_box {
				height: 244px;
				background-color: #fff;
				border-radius: 0 0 5px 5px;
			}
			
			.link_error_box .error_tips {
				width: 100%;
				height: 71px;
				margin-left: auto;
				margin-right: auto;
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/xdisk/bind_disk/error_pic1e9c5d.png) center 0px no-repeat;
				margin: 30px 0;
				float: left;
			}
			
			.link_error_box .error_dropbox {
				background-position: center -72px;
			}
			
			.link_error_box .error_weiyun {
				background-position: center 0;
			}
			
			.link_error_box .error_google {
				background-position: center -144px;
			}
			
			.link_error_box .error_which {
				text-align: center;
				line-height: 22px;
			}
			
			.link_error_box .error_operate {
				text-align: center;
				padding: 15px 0 10px 0;
			}
			
			.p-todisk {
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/xdisk/bind_disk/bg_rp1e9c5d.png) repeat;
			}
			
			.page_todisk {
				position: absolute;
				height: 245px;
				width: 400px;
				left: 50%;
				margin-left: -200px;
				top: 50%;
				margin-top: -120px;
				border: 1px solid #c1c1c1;
				box-shadow: 0 0 8px rgba(0, 0, 0, 0.2);
				border-radius: 5px;
				background-color: #fff;
			}
			
			.todisk_hd {
				height: 4px;
				overflow: hidden;
				background-color: #6bc5f5;
				border-radius: 5px 5px 0 0;
			}
			
			.todisk_process {
				padding: 50px 0 0 68px;
				overflow: hidden;
			}
			
			.todisk_process .source_pic,
			.todisk_process .dest_pic {
				float: left;
				text-align: center;
				width: 90px;
			}
			
			.todisk_process .source_pic p,
			.todisk_process .dest_pic p {
				width: 90px;
				padding: 10px 0;
			}
			
			.todisk_process .source_pic {
				padding-top: 7px;
			}
			
			.todisk_process .ico_dire {
				float: left;
				width: 45px;
				height: 32px;
				margin: 25px 22px 0;
				background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/xdisk/bind_disk/translate1e9c5d.png) no-repeat;
			}
			
			.todisk_doing {
				padding: 10px 0 0 0;
				text-align: center;
			}
			
			.todisk_doing .todisk_ing {
				padding-top: 10px;
			}
			
			.todisk_doing .todisk_ing img {
				vertical-align: middle;
				margin: -2px 5px 0 0;
				*margin: 1px 5px 0 0;
				_vertical-align: baseline;
			}
			
			.todisk_doing .todisk_operate {
				padding: 15px 0 0 0;
			}
			
			.todisk_doing .todisk_succ a {
				color: #1e5494;
			}
			
			.todisk_line_box {
				width: 164px;
				overflow: hidden;
				margin: 15px auto 0 auto;
				text-align: left;
			}
			
			.b_out_line {
				overflow: hidden;
				font-size: 0px;
				height: 8px;
				width: 160px;
				border: 1px solid #bbb;
				background-color: #ececec;
				border-radius: 8px;
				box-shadow: 0 1px 1px rgba(0, 0, 0, .1) inset;
				)
			}
			
			.b_inner_line {
				overflow: hidden;
				font-size: 0;
				height: 100%;
				background-color: #2f82d0;
				background-image: -webkit-linear-gradient(bottom, #2472be, #3a92e2);
				background-image: -moz-linear-gradient(bottom, #2472be, #3a92e2);
				filter: progid:DXImageTransform.Microsoft.gradient(startcolorstr=#3a92e2, endcolorstr=#2472be, gradientType=0);
				border-radius: 0 8px 8px 0;
			}
			
			.ellipsis {
				overflow: hidden;
				text-overflow: ellipsis;
				-o-text-overflow: ellipsis;
				white-space: nowrap;
			}
			
			.od_items .graytext {
				color: #a0a0a0;
			}
		</style>
	</head>

	<body class="tbody" onbeforeunload="return closePage(event);">
		<div id="dndContainer" class="QMEditorMenuBorder dndContainer" style="top: -400px; left: -400px;">
			<div style="padding:5px 5px 0;font-size:12px;">
				<a class="right" id="dndContainer151655795409609355526724287968">关闭</a>
			</div>
			<div style="height:150px;">
				<div ui-type="html5drag_msg" style="width: 100%; font-size: 14px; text-align: center; line-height: 150px;">将文件拖拽至此区域</div>
			</div>
		</div>
		<div unselectable="on" id="QMEditorMenuBar" class="menubarbg editormenubar" style="display:none; z-index:120;"></div>
		<div id="15165579537490488769794919204_QMAutoCompleteMenu" class="" style="background:#fff;display:none;z-index:1121;position:absolute;left:px;top:px; height:315px; ">
			<div style="margin:0px;">
				<div class="menu_base">
					<div class="menu_bd" style="padding:0;">
						<div unselectable="on" id="15165579537490488769794919204_QMAutoCompleteMenu__title_" style="white-space:nowrap;width:220px;line-height:21px;display:none;"></div>
						<div unselectable="on" id="15165579537490488769794919204_QMAutoCompleteMenu__menuall_" style="overflow-y:auto;height:auto;line-height:21px;width:220px"></div>
					</div>
				</div>
			</div>
		</div>
		<table style="position:absolute;z-index:9999;left:-200px;top:0;" cellspacing="0" cellpadding="0" onmousedown="return false;" unselectable="on">
			<tbody>
				<tr>
					<td>
						<div style="border:1px solid #ACA899;width:130px;padding:2px;background:#fff;">
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="cut">
								<div style="float:right;" unselectable="on" opt="cut">Ctrl+X</div>剪切</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="copy">
								<div style="float:right;" unselectable="on" opt="copy">Ctrl+C</div>复制</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="paste">
								<div style="float:right;" unselectable="on" opt="paste">Ctrl+V</div>粘贴</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="edit">
								<div style="float:right;" unselectable="on" opt="edit"></div>编辑</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="delete">
								<div style="float:right;" unselectable="on" opt="delete"></div>删除</div>
							<div style="font-size:1px;height:7px;overflow:hidden;" unselectable="on">
								<div style="border-top:1px solid #ACA899;margin-top:3px;"></div>
							</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="selectall">
								<div style="float:right;" unselectable="on" opt="selectall">Ctrl+A</div>全选</div>
						</div>
					</td>
					<td style="height:100%;filter:alpha(opacity=50);opacity:0.5;">
						<div style="margin-top:4px;border-left:2px solid black;height:100%;"></div>
					</td>
				</tr>
				<tr>
					<td style="filter:alpha(opacity=50);opacity:0.5;">
						<div style="margin-left:4px;border-top:2px solid black;height:2px;"></div>
					</td>
					<td style="filter:alpha(opacity=50);opacity:0.5;">
						<div style="margin-left:0px;border-top:2px solid black;height:2px;"></div>
					</td>
				</tr>
			</tbody>
		</table>
		<div id="151655795374207677072932324711_QMAutoCompleteMenu" class="" style="background:#fff;display:none;z-index:1121;position:absolute;left:px;top:px; height:315px; ">
			<div style="margin:0px;">
				<div class="menu_base">
					<div class="menu_bd" style="padding:0;">
						<div unselectable="on" id="151655795374207677072932324711_QMAutoCompleteMenu__title_" style="white-space:nowrap;width:220px;line-height:21px;display:none;"></div>
						<div unselectable="on" id="151655795374207677072932324711_QMAutoCompleteMenu__menuall_" style="overflow-y:auto;height:auto;line-height:21px;width:220px"></div>
					</div>
				</div>
			</div>
		</div>
		<table style="position:absolute;z-index:9999;left:-200px;top:0;" cellspacing="0" cellpadding="0" onmousedown="return false;" unselectable="on">
			<tbody>
				<tr>
					<td>
						<div style="border:1px solid #ACA899;width:130px;padding:2px;background:#fff;">
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="cut">
								<div style="float:right;" unselectable="on" opt="cut">Ctrl+X</div>剪切</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="copy">
								<div style="float:right;" unselectable="on" opt="copy">Ctrl+C</div>复制</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="paste">
								<div style="float:right;" unselectable="on" opt="paste">Ctrl+V</div>粘贴</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="edit">
								<div style="float:right;" unselectable="on" opt="edit"></div>编辑</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="delete">
								<div style="float:right;" unselectable="on" opt="delete"></div>删除</div>
							<div style="font-size:1px;height:7px;overflow:hidden;" unselectable="on">
								<div style="border-top:1px solid #ACA899;margin-top:3px;"></div>
							</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="selectall">
								<div style="float:right;" unselectable="on" opt="selectall">Ctrl+A</div>全选</div>
						</div>
					</td>
					<td style="height:100%;filter:alpha(opacity=50);opacity:0.5;">
						<div style="margin-top:4px;border-left:2px solid black;height:100%;"></div>
					</td>
				</tr>
				<tr>
					<td style="filter:alpha(opacity=50);opacity:0.5;">
						<div style="margin-left:4px;border-top:2px solid black;height:2px;"></div>
					</td>
					<td style="filter:alpha(opacity=50);opacity:0.5;">
						<div style="margin-left:0px;border-top:2px solid black;height:2px;"></div>
					</td>
				</tr>
			</tbody>
		</table>
		<div id="151655795372805053999006788823_QMAutoCompleteMenu" class="" style="background:#fff;display:none;z-index:1121;position:absolute;left:px;top:px; height:315px; ">
			<div style="margin:0px;">
				<div class="menu_base">
					<div class="menu_bd" style="padding:0;">
						<div unselectable="on" id="151655795372805053999006788823_QMAutoCompleteMenu__title_" style="white-space:nowrap;width:220px;line-height:21px;display:none;"></div>
						<div unselectable="on" id="151655795372805053999006788823_QMAutoCompleteMenu__menuall_" style="overflow-y:auto;height:auto;line-height:21px;width:220px"></div>
					</div>
				</div>
			</div>
		</div>
		<table style="position:absolute;z-index:9999;left:-200px;top:0;" cellspacing="0" cellpadding="0" onmousedown="return false;" unselectable="on">
			<tbody>
				<tr>
					<td>
						<div style="border:1px solid #ACA899;width:130px;padding:2px;background:#fff;">
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="cut">
								<div style="float:right;" unselectable="on" opt="cut">Ctrl+X</div>剪切</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="copy">
								<div style="float:right;" unselectable="on" opt="copy">Ctrl+C</div>复制</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="paste">
								<div style="float:right;" unselectable="on" opt="paste">Ctrl+V</div>粘贴</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="edit">
								<div style="float:right;" unselectable="on" opt="edit"></div>编辑</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="delete">
								<div style="float:right;" unselectable="on" opt="delete"></div>删除</div>
							<div style="font-size:1px;height:7px;overflow:hidden;" unselectable="on">
								<div style="border-top:1px solid #ACA899;margin-top:3px;"></div>
							</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="selectall">
								<div style="float:right;" unselectable="on" opt="selectall">Ctrl+A</div>全选</div>
						</div>
					</td>
					<td style="height:100%;filter:alpha(opacity=50);opacity:0.5;">
						<div style="margin-top:4px;border-left:2px solid black;height:100%;"></div>
					</td>
				</tr>
				<tr>
					<td style="filter:alpha(opacity=50);opacity:0.5;">
						<div style="margin-left:4px;border-top:2px solid black;height:2px;"></div>
					</td>
					<td style="filter:alpha(opacity=50);opacity:0.5;">
						<div style="margin-left:0px;border-top:2px solid black;height:2px;"></div>
					</td>
				</tr>
			</tbody>
		</table>
		<div id="151655795370202078941747145242_QMAutoCompleteMenu" class="" style="background:#fff;display:none;z-index:1121;position:absolute;left:px;top:px; height:315px; ">
			<div style="margin:0px;">
				<div class="menu_base">
					<div class="menu_bd" style="padding:0;">
						<div unselectable="on" id="151655795370202078941747145242_QMAutoCompleteMenu__title_" style="white-space:nowrap;width:220px;line-height:21px;display:none;"></div>
						<div unselectable="on" id="151655795370202078941747145242_QMAutoCompleteMenu__menuall_" style="overflow-y:auto;height:auto;line-height:21px;width:220px"></div>
					</div>
				</div>
			</div>
		</div>
		<table style="position:absolute;z-index:9999;left:-200px;top:0;" cellspacing="0" cellpadding="0" onmousedown="return false;" unselectable="on">
			<tbody>
				<tr>
					<td>
						<div style="border:1px solid #ACA899;width:130px;padding:2px;background:#fff;">
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="cut">
								<div style="float:right;" unselectable="on" opt="cut">Ctrl+X</div>剪切</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="copy">
								<div style="float:right;" unselectable="on" opt="copy">Ctrl+C</div>复制</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="paste">
								<div style="float:right;" unselectable="on" opt="paste">Ctrl+V</div>粘贴</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="edit">
								<div style="float:right;" unselectable="on" opt="edit"></div>编辑</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="delete">
								<div style="float:right;" unselectable="on" opt="delete"></div>删除</div>
							<div style="font-size:1px;height:7px;overflow:hidden;" unselectable="on">
								<div style="border-top:1px solid #ACA899;margin-top:3px;"></div>
							</div>
							<div class="menu_item" onmouseover="if (this.className == &#39;menu_item&#39;){this.className = &#39;menu_item_high&#39;;}" onmouseout="if (this.className == &#39;menu_item_high&#39;){this.className = &#39;menu_item&#39;;}" style="padding:0 20px;line-height:19px;" unselectable="on" opt="selectall">
								<div style="float:right;" unselectable="on" opt="selectall">Ctrl+A</div>全选</div>
						</div>
					</td>
					<td style="height:100%;filter:alpha(opacity=50);opacity:0.5;">
						<div style="margin-top:4px;border-left:2px solid black;height:100%;"></div>
					</td>
				</tr>
				<tr>
					<td style="filter:alpha(opacity=50);opacity:0.5;">
						<div style="margin-left:4px;border-top:2px solid black;height:2px;"></div>
					</td>
					<td style="filter:alpha(opacity=50);opacity:0.5;">
						<div style="margin-left:0px;border-top:2px solid black;height:2px;"></div>
					</td>
				</tr>
			</tbody>
		</table>
		<script language="JavaScript">
			getTop().ossLogComposeInitTime.end('WScreen');
		</script>
		<form name="importqq_form" method="POST" action="https://mail.qq.com/cgi-bin/addr_importqq?sid=ure_pvIkstSwo2E7" target="actionFrame"><input type="hidden" name="sid" value="ure_pvIkstSwo2E7"><input type="hidden" name="ImportType" value="Replace"></form>
		<form method="post" id="frm" name="frm" target="actionFrame" action="https://mail.qq.com/cgi-bin/compose_send" enctype="multipart/form-data"><input name="content_compare" type="hidden" disabled="" value="&lt;div&gt;&lt;br&gt;&lt;/div&gt;"><input type="hidden" name="704e1ea86c6421f27cb70d508c15a9aa" value="7e1af54a1942045204d585f6451213ba"><input type="hidden" name="sid" value="ure_pvIkstSwo2E7"><input type="hidden" name="bigattachcnt" value=""><input type="hidden" name="exstore" value=""><input type="hidden" name="from_s" value="cnew"><input type="hidden" id="swap" name="swap" value=""><input type="hidden" id="signtype" name="signtype" value=""><input name="newwin" type="hidden" value=""><input name="verifykey" id="verifykey" value="" type="hidden">
			<table cellspacing="0" cellpadding="0" border="0" class="composetab">
				<tbody>
					<tr>
						<td>
							<div class="composetab_img"></div>
							<div class="composetab_sel">
								<div>普通邮件</div>
							</div>
						</td>
						<td>
							<div class="composetab_img"></div>
							<div class="composetab_unsel">
								<div>
									<a class="" onclick="saveContentGoUrl(&#39;/cgi-bin/grouplist?t=compose_group&amp;sid=ure_pvIkstSwo2E7&amp;newwin=&#39;);return false;" hidefocus="">群邮件</a>
								</div>
							</div>
						</td>
						<td>
							<div class="composetab_img"></div>
							<div class="composetab_unsel">
								<div>
									<a onclick="exitConfirm(&#39;redirectExitURLId(2)&#39;);return false;" hidefocus="">贺卡</a>
								</div>
							</div>
						</td>
						<td>
							<div class="composetab_img"></div>
							<div class="composetab_unsel">
								<div>
									<a onclick="exitConfirm(&#39;redirectExitURLId(10)&#39;);return false;" hidefocus="">明信片</a>
								</div>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<div id="toolbar">
				<div class="toolbg toolbgline" style="background-image:none;">
					<div style="margin:5px 0 0 0;" class="right">
						<a href="javascript:;" ck="compose_preview" class="btn_space">预览</a>&nbsp;&nbsp;
						<a onclick="openNewWinEdit();return false;" href="javascript:;" tabindex="12" class="btn_space">新窗口写信</a>
					</div>
					<a name="sendbtn" tabindex="9" class="btn_gray btn_space" hidefocus="" href="javascript:;" oldstyledisplay="" disablednodeid="" style="">发送</a>
					<a name="timeSendbtn" tabindex="10" class="btn_gray btn_space" hidefocus="" href="javascript:;" oldstyledisplay="" disablednodeid="" style="">定时发送</a>
					<a name="savebtn" title="存草稿后，您可以在草稿箱中找回" tabindex="10" class="btn_gray btn_space" hidefocus="" href="javascript:;" oldstyledisplay="" disablednodeid="" style="">存草稿</a>
					<a name="closebtn" onclick="return exitConfirm(&#39;redirectExitURLId(1)&#39;);" tabindex="11" class="btn_gray btn_space" hidefocus="" href="javascript:;">关闭</a>
				</div>
			</div>
			<div class="readmailinfo" style="border-bottom:1px solid #fff;min-width:650px;_zoom:1;" id="sendtimepadding">
				<div id="rightArea" style="float:right;width:179px!important;width:180px;margin:16px 12px 0 0; margin:14px 14px 0 0\9;filter:none;">
					<div id="addr_cmd" onmouseover="if(this.className != &#39;cptab cpslt&#39;)this.className=&#39;cptab toolbg&#39;" onmouseout="if(this.className == &#39;cptab toolbg&#39;)this.className=&#39;cptab&#39;" class="cptab cpslt" style="_width:88px;" onclick="changeTab(&#39;AddrTab&#39;);">
						<a hidefocus="">通讯录</a>
					</div>
					<div id="stationery_cmd" onmouseover="if(this.className != &#39;cptab cpslt&#39;)this.className=&#39;cptab toolbg&#39;" onmouseout="if(this.className == &#39;cptab toolbg&#39;)this.className=&#39;cptab&#39;" class="cptab" style="margin-left:89px;margin-left:90px\9;border-left-width:1px;border-left-width:0px\9;" onclick="useStationery_new();">
						<a hidefocus="">信&nbsp;&nbsp;纸</a>
					</div>
					<div style="height:25px;filter:none;" class="grptitle_tab_"></div>
					<div id="AddrTab" class="addrtab cpright" style="">
						<div id="quickaddr_div" style="height: 445px;">
							<div class="lm_sbar"><input type="button" id="lm1516557953815024763505526157248cancel" class="lm_sopen">
								<div><input id="lm1516557953815024763505526157248searchtext" type="text" class="txt" value="查找联系人..." autocomplete="off"></div>
							</div>
							<div class="lm_panel" style="height: 410px;">
								<div id="lm1516557953815024763505526157248tree">
									<div class="groupopen" style="display:" key="t2" sub="0">
										<div class="settingtable qqshowbd" style="padding:4px 0 3px 8px;cursor:default;">
											<a class="lm_rt" fun="g2"></a>QQ好友</div>
									</div>
									<div class="groupsub" style="" key="t2" sub="1">
										<div class="groupclose" style="display:" key="g1000000" sub="0">
											<div class="" onmouseover="this.style.background=&#39;#FFF6DF&#39;" onmouseout="this.style.background=&#39;#fff&#39;" style="padding:2px 0 1px;overflow:hidden;height:100%;">
												<div style="overflow:hidden;width:100%">
													<div title="我的好友" class="lm_ca">
														<a nocheck="true"><input type="button" class="lm_ico">我的好友</a>
													</div>
												</div>
											</div>
										</div>
										<div class="groupsub" style="display:none" key="g1000000" sub="1">
											<div class="" onmouseover="this.style.background=&#39;#FFF6DF&#39;" onmouseout="this.style.background=&#39;#fff&#39;" style="padding:2px 0 1px;overflow:hidden;height:100%;">
												<div style="overflow:hidden;width:100%">
													<div title="我的好友" class="lm_ca">
														<a nocheck="true"><input type="button" class="lm_ico">我的好友</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div id="lm1516557953815024763505526157248search" style="display:none;"></div>
							</div>
						</div>
					</div>
					<div id="stationery_div" class="cpright" style="position:relative;width:177px!important;width:178px;_width:179px;height:369px;display:none;"> <input type="hidden" id="stationeryCount" name="stationeryCount" value="">
						<div style="height:27px;margin:6px 11px 0;">
							<div id="page_span" style="float:right;font-size:14px;margin-top:4px">
								<a id="paper_prev_b" href="javascript:;" disabled="true" class="paper_controller_btn"> <img id="paper_prev_b_img" src="./spacer1e9c5d.gif"> </a><span id="pageid"></span>
								<a id="paper_next_b" href="javascript:;" class="paper_controller_btn"> <img id="paper_next_b_img" src="./spacer1e9c5d.gif"> </a>
							</div>
						</div>
						<ul id="show_paper"></ul>
						<div style="clear:both; position:absolute; bottom:2px; right:9px; width:155px;" id="new_stationery"></div>
					</div>
				</div>
				<div id="rightAreaBtnWarp" style="float: right; margin: 200px 3px 0px 6px; height: 245px;">
					<a id="rightAreaBtn" style="font:bold 12px 宋体;text-decoration:none;color:#585858" onclick="hideRightArea(false)"><input type="button" class="prefd"></a>
				</div>
				<div style="margin-right:22px; margin-top:14px; clear:left;">
					<div style="height:2px;display:block;*display:none;width:auto;">&nbsp;</div>
					<div id="addrsDiv" class="js_addr_div">
						<table cellpadding="0" cellspacing="0" class="i" border="0" id="trSC" style="width:auto;display:none;margin-bottom:5px;">
							<tbody>
								<tr>
									<td style="*width:58px;*padding-right:10px;" valign="top" nowrap="">
										<div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap="">
											<a id="sc_btn" title="点击选择要分别发送的联系人" href="javascript:;">分别发送</a>
										</div>
									</td>
									<td class="content_title" width="99%" style="*padding-right:4px;">
										<div id="scAreaCtrl" class="noime div_txt" style="cursor: text;">
											<div style="position:absolute;color:#A0A0A0;padding-top:1px;display:none;"></div>
											<div class="addr_text" style="float:left;border:none;overflow:hidden;width:13px;"><input type="input" class="js_input" style="border:none;outline:none;-webkit-appearance:none;width:100%;" tabindex="2" autocomplete="off">
												<div style="width: 1px; height: 1px; overflow: auto; white-space: nowrap; border: none; margin: 0px; padding: 0px; font-family: Tahoma; font-size: 12px; font-weight: 400; line-height: normal; word-spacing: 0px;"></div>
											</div>
											<div style="clear:both;border:none;margin:0;padding:0;" unselectable="on"><input type="text" style="position:absolute;border:none;padding:0;width:10px;left:-9999px;top:-9999px;" tabindex="-1"></div>
										</div>
										<div style="display: none;"></div><textarea id="sc" name="sc" size="100" class="txt input_wd rev noime" onfocus="setFocus(&#39;sc&#39;);" style="display:none;" disabled="" tabindex="2"></textarea></td>
								</tr>
							</tbody>
						</table>
						<table cellpadding="0" cellspacing="0" border="0" class="i" style="width:auto;margin-bottom:5px;" id="trTO">
							<tbody>
								<tr>
									<td style="*width:58px;*padding-right:10px;" valign="top" nowrap="">
										<div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap="">
											<a id="to_btn" title="点击选择收件人" href="javascript:;">收件人</a>
										</div>
									</td>
									<td class="content_title" width="99%" style="*padding-right:4px;">
										<div id="toAreaCtrl" class="noime div_txt" style="cursor: text;">
											<div style="position: absolute; color: rgb(160, 160, 160); padding-top: 1px;"></div>
											<div class="addr_text" style="float:left;border:none;overflow:hidden;width:13px;"><input type="input" class="js_input" style="border:none;outline:none;-webkit-appearance:none;width:100%;" accesskey="t" tabindex="1" autocomplete="off">
												<div style="width: 1px; height: 1px; overflow: auto; white-space: nowrap; border: none; margin: 0px; padding: 0px; font-family: Tahoma; font-size: 12px; font-weight: 400; line-height: normal; word-spacing: 0px;"></div>
											</div>
											<div style="clear:both;border:none;margin:0;padding:0;" unselectable="on"><input type="text" style="position:absolute;border:none;padding:0;width:10px;left:-9999px;top:-9999px;" tabindex="-1"></div>
										</div>
										<div style="display: none;"></div><textarea title="您可以在右侧中选择联系人给他们发信" id="to" name="to" class="noime txt input_wd rev" onfocus="setFocus(&#39;cc&#39;);" style="display:none;" tabindex="1" accesskey="t">
</textarea><input id="swap3" name="swap3" value="" type="hidden"></td>
								</tr>
							</tbody>
						</table>
						<table cellpadding="0" cellspacing="0" border="0" class="i" id="trCC" style="width:auto;display:none;margin-bottom:5px;">
							<tbody>
								<tr>
									<td style="*width:58px;*padding-right:10px;" valign="top" nowrap="">
										<div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap=""><span clss="f_family">&nbsp;&nbsp;&nbsp;</span>
											<a id="cc_btn" title="点击选择要抄送的联系人" href="javascript:;">抄送</a>
										</div>
									</td>
									<td class="content_title" width="99%" style="*padding-right:4px;">
										<div id="ccAreaCtrl" class="noime div_txt" style="cursor: text;">
											<div style="position:absolute;color:#A0A0A0;padding-top:1px;display:none;"></div>
											<div class="addr_text" style="float:left;border:none;overflow:hidden;width:13px;"><input type="input" class="js_input" style="border:none;outline:none;-webkit-appearance:none;width:100%;" tabindex="2" autocomplete="off">
												<div style="width: 1px; height: 1px; overflow: auto; white-space: nowrap; border: none; margin: 0px; padding: 0px; font-family: Tahoma; font-size: 12px; font-weight: 400; line-height: normal; word-spacing: 0px;"></div>
											</div>
											<div style="clear:both;border:none;margin:0;padding:0;" unselectable="on"><input type="text" style="position:absolute;border:none;padding:0;width:10px;left:-9999px;top:-9999px;" tabindex="-1"></div>
										</div>
										<div style="display: none;"></div><textarea id="cc" name="cc" size="100" class="txt input_wd rev noime" onfocus="setFocus(&#39;cc&#39;);" style="display:none;" disabled="" tabindex="2"></textarea></td>
								</tr>
							</tbody>
						</table>
						<table cellpadding="0" cellspacing="0" border="0" class="i" id="trBCC" style="width:auto;display:none;margin-bottom:5px;">
							<tbody>
								<tr>
									<td style="*width:58px;*padding-right:10px;" valign="top" nowrap="">
										<div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap=""><span clss="f_family">&nbsp;&nbsp;&nbsp;</span>
											<a id="bcc_btn" title="点击选择要密送的联系人" href="javascript:;">密送</a>
										</div>
									</td>
									<td class="content_title" width="99%" style="*padding-right:4px;">
										<div id="bccAreaCtrl" class="noime div_txt" style="cursor: text;">
											<div style="position:absolute;color:#A0A0A0;padding-top:1px;display:none;"></div>
											<div class="addr_text" style="float:left;border:none;overflow:hidden;width:13px;"><input type="input" class="js_input" style="border:none;outline:none;-webkit-appearance:none;width:100%;" tabindex="2" autocomplete="off">
												<div style="width: 1px; height: 1px; overflow: auto; white-space: nowrap; border: none; margin: 0px; padding: 0px; font-family: Tahoma; font-size: 12px; font-weight: 400; line-height: normal; word-spacing: 0px;"></div>
											</div>
											<div style="clear:both;border:none;margin:0;padding:0;" unselectable="on"><input type="text" style="position:absolute;border:none;padding:0;width:10px;left:-9999px;top:-9999px;" tabindex="-1"></div>
										</div>
										<div style="display: none;"></div><textarea id="bcc" name="bcc" size="100" class="txt input_wd rev noime" onfocus="setFocus(&#39;bcc&#39;);" style="display:none;" disabled="" tabindex="2"></textarea></td>
								</tr>
							</tbody>
						</table>
						<div id="addrOper" style="overflow:hidden; min-height:22px; _zoom:1;">
							<div class="input_title addrtitle">
								<div style="float:left;white-space:nowrap;padding-left:1px;"><span><a id="aCC" title="什么是抄送：
同时将这一封邮件发送给其他联系人。" href="javascript:;">添加抄送</a>&nbsp;-&nbsp;<a id="aBCC" title="什么是密送：
同时将这一封邮件发送给其他联系人，但收件人及抄送人不会看到密送人。" href="javascript:;">添加密送</a>&nbsp;|&nbsp;</span><span style="display:none;">每个收件人将收到单独发给他/她的邮件。</span>
									<a id="aSC" title="什么是分送：
会对多个人一对一发送。每个人将收到单独发给他/她的邮件。" href="javascript:;">分别发送</a>
								</div>
								<div class="addrtitle right" style="display:none;">您是否还要找：<span id="addrAssociation"><a href="https://mail.qq.com/cgi-bin/readtemplate?sid=ure_pvIkstSwo2E7&amp;t=compose&amp;ver=0501&amp;s=cnew&amp;s=left&amp;loc=frame_html,,,21">nicoyang</a>，<a href="https://mail.qq.com/cgi-bin/readtemplate?sid=ure_pvIkstSwo2E7&amp;t=compose&amp;ver=0501&amp;s=cnew&amp;s=left&amp;loc=frame_html,,,21">angusdu</a>, <a href="https://mail.qq.com/cgi-bin/readtemplate?sid=ure_pvIkstSwo2E7&amp;t=compose&amp;ver=0501&amp;s=cnew&amp;s=left&amp;loc=frame_html,,,21">allen</a></span></div>
								<div class="clr"></div>
							</div>
						</div>
					</div>
					<table id="addrUrlCreator" cellpadding="0" cellspacing="0" border="0" class="i" style="display:none;width:auto;margin-bottom:5px;">
						<tbody>
							<tr>
								<td style="*width:58px;*padding-right:10px;" valign="top" nowrap=""></td>
								<td width="99%" id="receiverMsgContainer">
									<div style="display: none;"></div>
								</td>
							</tr>
							<tr>
								<td style="*width:58px;*padding-right:10px;" valign="top" nowrap="">
									<div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap="">收件人</div>
								</td>
								<td class="content_title" width="99%" style="*padding-right:4px;">
									<div class="attbg bd urlcreator_to"><span class="ico_urlcreator"></span><span>网页生成助手</span>
										<a onclick="rmHelper(&#39;urlcreator&#39;);" class="ico_close_mini" title="移除"></a>
									</div>
									<div style="margin:0 0 8px 0;clear:both;" class="addrtitle">试试给助手发封邮件。它会把邮件转成网页，并把网页的链接地址回复给你。
										<a href="http://service.mail.qq.com/cgi-bin/help?subtype=1&amp;&amp;no=1001014&amp;&amp;id=23" target="_blank">了解更多</a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<table id="addrQzone" cellpadding="0" cellspacing="0" border="0" class="i" style="display:none;width:auto;margin-bottom:5px;">
						<tbody>
							<tr>
								<td style="*width:58px;*padding-right:10px;" valign="top" nowrap=""></td>
								<td width="99%" id="receiverMsgContainer"></td>
							</tr>
							<tr>
								<td style="*width:58px;*padding-right:10px;" valign="top" nowrap="">
									<div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap="">收件人</div>
								</td>
								<td class="content_title" width="99%" style="*padding-right:4px;">
									<div class="attbg bd urlcreator_to"><span class="ico_addrqzone"></span><span>发表到我的Qzone</span>
										<a onclick="rmHelper(&#39;qzone&#39;);" class="ico_close_mini" title="移除"></a>
									</div>
									<div style="margin:0 0 8px 0;clear:both;" class="addrtitle">给“发表到我的Qzone”发信，即可把邮件内容以日志形式发表到Qzone上。
										<a href="http://service.mail.qq.com/cgi-bin/help?subtype=1&amp;&amp;no=242&amp;&amp;id=23" target="_blank">了解更多</a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<table cellpadding="0" cellspacing="0" border="0" class="i" style="width:auto;margin:5px 0;">
						<tbody>
							<tr>
								<td style="*width:58px;*padding-right:10px;" valign="top" nowrap=""></td>
								<td width="99%" id="receiverMsgContainer"></td>
							</tr>
							<tr>
								<td style="*width:58px;*padding-right:10px;" valign="top" nowrap="">
									<div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap=""><span title="主题是一封邮件的标题。">主题</span></div>
								</td>
								<td class="content_title" width="99%" style="*padding-right:4px;">
									<div class="div_txt" style="cursor: text;" unselectable="on">
										<a hidefocus="" style="display:block;float:right;width:24px;text-decoration:none;"><input type="button" title="在QQ邮箱之间发送邮件时使用彩色标题。" id="cpanelBtn" hidefocus="" class="pointer"></a>
										<div style="margin-right:32px;height:16px;">
											<div style="_position:absolute;_width:100%;"><input id="subject" title="主题是一封邮件的标题，可不填。" name="subject" type="text" autocomplete="off" tabindex="2" class="" style="word-break:break-all;height:16px;line-height:16px;width:99%;border-width:0;" value="" onfocus="showSubjectMsg(false);"></div>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="input_title" style="padding-top:10px;padding-bottom:8px;" onmousedown="QMAttach.hideDragAndDropContainer();"> <span style="display:none" id="attachupload"></span> <span id="composecontainer"><span class="compose_toolbtn qmEditorAttach dragAndDropTrap_box"><span sizelimit="50" title="添加小于 50M 的文件作为附件" id="AttachFrame" onmouseover="getTop().addClass(getTop().finds(&#39;a&#39;,this)[0],&#39;underline&#39;);" onmouseout="getTop().rmClass(getTop().finds(&#39;a&#39;,this)[0],&#39;underline&#39;);" onmousedown="getTop().LogKV(&#39;compose|toolbar|entrance|attach&#39;);" style="position: relative;"><span style="top: 0px; left: 0px; position: absolute; cursor: pointer; width: 66px; height: 15px; overflow: hidden; background-color: rgb(255, 255, 255); zoom: 1; opacity: 0; z-index: 1;"><input type="file" title=" " name="UploadFile" multiple="" style="font-family: Times; position: absolute; cursor: pointer; width: 2000px; height: 600px; right: 0px;"></span>
					<a class="compose_toolbtn_text ico_att" onclick="return false;" onmousedown="getTop().LogKV(&#39;compose|toolbar|entrance|attach&#39;);return false;" hidefocus=""><span id="sAddAtt1">添加附件</span><span onclick="return false;" onmousedown="return false;" style="display:none;" id="sAddAtt2">继续添加</span></a>
					</span>
					<a class="ico_moreupload" id="moreupload"></a>
					</span><span class="compose_toolbtn qmEditorAttachBig" onmousedown="return false;" ftnv2="true" onclick="getTop().LogKV(&#39;compose|toolbar|entrance|bigattach&#39;);initFileTransporter();return false" title="可以向任何邮箱发送最大 3G 的附件" id="bigAttachLink"><a class="compose_toolbtn_text ico_attbig" hidefocus="">超大附件</a></span>
					<script type="text/javascript">
						if("true" == true ||
							(getTop().getOnlineAttachInfo && getTop().getOnlineAttachInfo() && getTop().getOnlineAttachInfo().sOpen == "1")) {
							var _sOnlineDoc = [
								'<span class="compose_toolbtn qmEditorAttachBig" onmousedown="return false;" ftnv2="true" ',
								'onclick="getTop().LogKV(\'compose|toolbar|entrance|span_online_doc\');showAddOnlineDocDlg();return false" ',
								'title="在线文档" id="span_online_doc">',
								'<a class="compose_toolbtn_text ico_editDoc" style="padding-left:20px;" hidefocus>在线文档</a>',
								'</span>'
							].join("");
							document.write(_sOnlineDoc);
						}
					</script><span class="compose_toolbtn qmEditorAttachBig" onmousedown="return false;" ftnv2="true" onclick="getTop().LogKV(&#39;compose|toolbar|entrance|span_online_doc&#39;);showAddOnlineDocDlg();return false" title="在线文档" id="span_online_doc"><a class="compose_toolbtn_text ico_editDoc" style="padding-left:20px;" hidefocus="">在线文档</a></span></span><span id="QMEditorToolBarPlusArea"><span class="editor_btn unselect qmEditorPhotoWrap" style="position: relative;"><a class="editor_btn_text qmEditorPhoto " style="position: relative;"><span style="top: 0px; left: 0px; position: absolute; cursor: pointer; width: 44px; height: 19px; overflow: hidden; background-color: rgb(255, 255, 255); zoom: 1; opacity: 0; z-index: 1;"><input type="file" title=" " name="UploadFile" multiple="" style="font-family: Times; position: absolute; cursor: pointer; width: 2000px; height: 600px; right: 0px;"></span>照片</a><span class="ico_moreupload" opt="more"></span></span><span class="editor_btn unselect" id="editor_word_compose_tip" style="position: relative;"><a class="editor_btn_text qmEditorWord " style="position: relative;"><span style="top: 0px; left: 0px; position: absolute; cursor: pointer; width: 42px; height: 19px; overflow: hidden; background-color: rgb(255, 255, 255); zoom: 1; opacity: 0; z-index: 1;"><input type="file" title=" " name="UploadFile" multiple="" style="font-family: Times; position: absolute; cursor: pointer; width: 2000px; height: 600px; right: 0px;"></span>文档</a>
					</span><span class="editor_btn unselect"><a class="editor_btn_text qmEditorScreenSnap qmEditorScreenSnapDisable">截屏</a></span><span class="editor_btn unselect" id="netdisk_compose_tip" style="display: none;"><a class="editor_btn_text qmEditorNetDisk ">网盘</a></span><span class="editor_btn unselect"><a class="editor_btn_text qmEditorMo ">表情</a></span><span class="editor_btn unselect"><a class="editor_btn_text qmEditorMore ">更多</a></span></span>
					<script>
						document.write(getTop().outputToolBarControlBtn());
					</script><span class="editor_btn" style="margin-right:0;"><a id="editor_toolbar_btn_container" style="" unselectable="on" onmousedown="return false;" class="editor_btn_text qmEditorTxtStyle"><font class="editor_netdisk_txtmini">格式</font><span style="display: none;">↑</span><span style="">↓</span></a>
					</span>
				</div>
				<div style="margin:0 211px 0 69px; _margin-right:231px;" id="AttList" class="attbg">
					<div style="display:none;padding:7px;" id="editor_bgmusic_container"></div>
					<div style="display:none;" id="attachContainer">
						<div id="exist_file"></div>
						<div id="filecell"></div>
						<div id="BigAttach"></div>
						<div id="div_onlineAttach"></div>
					</div>
				</div>
				<div class="input_title infobar" id="encrypt_mail_tips" style="display:none; line-height: 25px; padding: 0 0 0 10px; margin: 0 210px 5px 68px;">这是一封加密邮件，对方需要解密才能查看邮件内容。</div>
				<div style="margin-right:20px;margin-top:-5px;">
					<table cellpadding="0" class="i" cellspacing="0" border="0" style="width:auto;">
						<tbody>
							<tr>
								<td style="*width:58px;*padding-right:10px;" valign="top" nowrap="">
									<div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap="">正文</div>
								</td>
								<td class="content_title" style="padding-top:1px!important;padding-top:0;padding-right:0;width:99%;" valign="top"><textarea id="content" name="content__html" style="display:none;"></textarea>
									<div id="QMEditorArea" style="position: relative; height: 352px;" tindex="3" acckey="q" qmeditorid="compose">
										<div ui-type="html5drag_msg" style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; display: none; border-width: 1px 1px 0px; border-style: solid; border-color: rgb(195, 195, 195); text-align: center; background: rgb(255, 255, 255); z-index: 2; font-size: 14px;">
											<div style="pointer-events: none;height: 40px;margin-top: 55px;position: absolute;top: 50%;line-height: 40px;width: 100%;">将图片拖拽至此区域，可直接添加至正文。</div>
										</div>
										<table cellspacing="0" cellpadding="0" class="qmEditorBase" style="">
											<tbody>
												<tr style="display:none;">
													<td height="10px" class="qmEditorToolBar" valign="top" unselectable="on" disp="false">
														<div class="qmEditorToolBarDiv">
															<div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorBold qmEditorBtnIconBold qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorItalic qmEditorBtnIconItalic qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorUnderline qmEditorBtnIconUnderline qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorFontName qmEditorBtnIconFontName qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorFontSize qmEditorBtnIconFontSize qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorForeColor qmEditorBtnIconForeColor qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorBackColor qmEditorBtnIconBackColor qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorAlignMode qmEditorBtnIconAlignMode qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorSerial qmEditorBtnIconSerial qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorIndentMode qmEditorBtnIconIndentMode qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorformatblock qmEditorBtnIconformatblock qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorCreateLink qmEditorBtnIconCreateLink qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on" title="格式刷用法：
1. 选中具有目标格式的内容
2. 单击格式刷
3. 再选中其它内容，这些内容会自动应用目标格式

提示：步骤2中若双击格式刷，可连续执行步骤3。">
																	<div class="qmEditorFormatMatch qmEditorBtnIconFormatMatch qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItem unselect" unselectable="on"></div>
																<div class="qmEditorToolBarItem unselect" unselectable="on">
																	<div class="qmEditorHtml qmEditorBtnIconHtml qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
																<div class="qmEditorToolBarItemRight" unselectable="on">
																	<div class="qmEditorFullScreen qmEditorBtnIconFullScreen qmEditorBtnIcon unselect" unselectable="on"><input type="button" class="qmEditorIcon" unselectable="on" onmousedown="return false;"></div>
																</div>
															</div>
															<div style="display:none;"></div>
															<div class="qmEditorBtnIcon" style="width:1px;"></div>
														</div>
													</td>
												</tr>
												<tr>
													<td height="100%" valign="top" unselectable="on" class="qmEditorContent"><iframe frameborder="0" scrolling="auto" id="_1516557953770013506801030795668" name="_1516557953770013506801030795668" class="qmEditorIfrmEditArea" onload="this.setAttribute(&#39;loaded&#39;,&#39;true&#39;);_creAteifRAmeoNlQAd_(&#39;_1516557953770013506801030795668&#39;,this);" src="javascript:(function(){document.open();document.domain=&#39;mail.qq.com&#39;;frameElement[&#39;_render_&#39;]=1;try{document.write(&#39;&lt;head&gt;&lt;script&gt;window.onerror=function(){return true};&lt;/script&gt;&#39;+parent[&#39;_cAcheBYifRAme_&#39;][&#39;_1516557953770013506801030795668_h&#39;]+&#39;&lt;/head&gt;&#39;+parent[&#39;_cAcheBYifRAme_&#39;][&#39;_1516557953770013506801030795668_b&#39;]);parent[&#39;_cAcheBYifRAme_&#39;][&#39;_1516557953770013506801030795668_h&#39;]=parent[&#39;_cAcheBYifRAme_&#39;][&#39;_1516557953770013506801030795668_b&#39;]=null;}catch(e){alert(e.message);}document.close();})()" style="" hidefocus="" tabindex="3" loaded="true" cbi_inited="true" src="./saved_resource(4).html"></iframe><textarea class="qmEditorText" tabindex="3" style="display:none;font-size:12px;"></textarea><textarea class="qmEditorText" tabindex="3" style="display:none;font-size:12px;"></textarea></td>
												</tr>
											</tbody>
										</table>
										<div class="qmEditorBaseBd"></div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="composeMoreOpt" style="margin-top: 5px; height: auto; float: left; width: 100%;" class="settingtable">
					<div style="margin:8px 0 0 68px">
						<div style="float: left; height: 20px;">
							<div id="Senderdiv" style="float:left;">
								<div title="可选择邮箱别名或POP文件夹的邮件地址
作为发信帐号。" style="float:left; margin-left:-3px;" class="textoftitle">&nbsp;发件人：</div>
								<div id="sendmailname_val" unselectable="on" onmousedown="return false" style="cursor:pointer; padding:0 0 0 3px;  float:left;"><b>简·易~减</b> &lt;<span>3261486093@qq.com</span>&gt;<span class="addrtitle" style="font-family: arial,sans-serif; padding-left:4px; font-size:9px; position:relative; top:-1px;">▼</span></div>
							</div><span class="left addrtitle">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span><input type="hidden" id="sendmailname" name="sendmailname" value="3261486093@qq.com"></div>
						<div class="left" id="signSelContainer"></div>
						<div class="left"><span style="cursor:pointer;" id="otherComposeOptionBtn">其他选项<img src="./spacer1e9c5d.gif" class="arrowdown"></span>&nbsp;</div>
						<div class="clr"></div>
					</div>
					<div id="otherComposeOptionCntr" style="display:none;">
						<div class="qqshowbd" style="padding:6px 8px;background:#FFF;margin:0 210px 8px 68px;margin-right:213px\9;padding-top:3px\9;_padding-top:10px;line-height:22px;overflow:hidden;zoom:1;"><span class="nowrap left" style="margin-right:6px;"><input title="勾选保存，邮件发送成功后，可返回已发送文件夹
中查看此封已发邮件。" type="checkbox" id="savesendbox" tabindex="8" name="savesendbox" value="1" style="margin:2px 1px 0 0;_margin:-5px 1px 0 0;vertical-align:middle;"><label style="cursor:pointer;vertical-align:middle;" for="savesendbox" title="勾选保存，邮件发送成功后，可返回已发送文件夹
中查看此封已发邮件。">保存到"已发送"</label>&nbsp;&nbsp;<span id="auto_save_span" style="display:none"><input title="勾选保存，邮件发送成功后，可返回已发送文件夹
中查看此封已发邮件。" type="checkbox" id="auto_save" name="auto_save" value="1" style="margin:2px 1px 0 0;_margin-top:-5px;vertical-align:middle;"><label style="cursor:pointer;vertical-align:middle;" for="auto_save">每次发信自动保存到"已发送"</label>&nbsp;&nbsp;</span><input type="checkbox" id="high" tabindex="9" name="priority" title="邮件投递优先级" value="urgency" style="margin:2px 1px 0 0;_margin-top:-5px;vertical-align:middle;"><label style="cursor:pointer;vertical-align:middle;" for="high" title="邮件投递优先级">紧急</label>&nbsp;&nbsp;<input title="启用回执功能
您可以了解收件人是否阅读了您发送的邮件" type="checkbox" id="receipt" name="receipt" value="receipt" tabindex="10" style="margin:2px 1px 0 0;_margin-top:-5px;vertical-align:middle;"><label style="cursor:pointer;vertical-align:middle;" for="receipt" title="启用回执功能
您可以了解收件人是否阅读了您发送的邮件">需要回执</label></span><wbr><span class="nowrap left" style="margin-right:6px;"><input id="contenttype" name="contenttype" value="text" style="margin:2px 1px 0 0;_margin-top:-5px;vertical-align:middle;" type="checkbox" onclick="changeContentType(this);" title="把邮件内容切换成纯文本
它将无法插入图片、表情，以及
将丢失正文颜色等"><label style="cursor:pointer;vertical-align:middle;" for="contenttype" title="把邮件内容切换成纯文本
它将无法插入图片、表情，以及
将丢失正文颜色等">纯文本</label>&nbsp;&nbsp;<input id="noletter" name="noletter" value="1" type="checkbox" style="margin:2px 1px 0 0;_margin-top:-5px;vertical-align:middle;" onclick="" title=""><label style="cursor:pointer;vertical-align:middle;" for="noletter" title="">使用信纸</label></span><wbr><span class="nowrap left" style="position:relative;"><input title="加密" type="checkbox" name="secmailcode" id="secmailcode" value="" style="margin:2px 1px 0 0;_margin-top:-5px;vertical-align:middle;"><label style="cursor:pointer;vertical-align:middle;" for="secmailcode">对邮件加密</label></span></div>
						<div class="clr"></div>
					</div>
				</div>
				<div class="clr"></div>
			</div>
			<div id="toolbar" class="clear">
				<div class="toolbg toolbgline">
					<a name="sendbtn" tabindex="5" class="btn_gray btn_space" hidefocus="" href="javascript:;" oldstyledisplay="" disablednodeid="" style="">发送</a>
					<a name="timeSendbtn" tabindex="6" class="btn_gray btn_space" hidefocus="" href="javascript:;" oldstyledisplay="" disablednodeid="" style="">定时发送</a>
					<a name="savebtn" title="存草稿后，您可以在草稿箱中找回" tabindex="7" class="btn_gray btn_space" hidefocus="" href="javascript:;" oldstyledisplay="" disablednodeid="" style="">存草稿</a>
					<a name="closebtn" onclick=" exitConfirm(&#39;redirectExitURLId(1)&#39;);" tabindex="8" class="btn_gray btn_space" hidefocus="" href="javascript:;">关闭</a>
				</div>
			</div>
			<div style="display:none;"><input id="swap2" name="swap2" value="" type="hidden"><input id="transattach" name="transattach" value="" type="hidden"><input id="SrcMailCharset" name="SrcMailCharset" value="" type="hidden"><input id="xqqstyle" name="xqqstyle" value="" type="hidden"><input id="mailbgmusic" name="mailbgmusic" type="hidden" value=""><input id="actiontype" name="actiontype" value="send" type="hidden"><input id="priority" name="priority" value="" type="hidden"><input id="sendname" name="sendname" value="简·易~减" type="hidden"><input id="acctid" name="acctid" value="0 " type="hidden"><input id="ReAndFw" name="ReAndFw" type="hidden"><input id="separatedcopy" name="separatedcopy" value="false" type="hidden"><input id="fmailid" name="fmailid" type="hidden"><input id="ReAndFwMailid" name="ReAndFwMailid" type="hidden"><input id="cattachlist" name="cattachelist" type="hidden"><input id="upfilelist" name="upfilelist" type="hidden"> <input id="rsturl" name="rsturl" type="hidden"><input id="fileidlist" name="fileidlist" type="hidden"><input id="t" name="t" value="" type="hidden"><input id="verifycode" name="verifycode" value="" type="hidden"><input id="verifycode_cn" name="verifycode_cn" value="" type="hidden"><input id="s" name="s" value="comm" type="hidden"><input id="from" name="from" value="" type="hidden"><input id="hitaddrbook" name="hitaddrbook" value="0" type="hidden"><input id="selfdefinestation" name="selfdefinestation" value="-1" type="hidden"><input id="backurl" name="backurl" value="" type="hidden"><input id="noatcp" name="noatcp" value="" type="hidden"><input id="domaincheck" name="domaincheck" value="0" type="hidden"></div>
		</form><pre id="source" style="display:none;"></pre><pre id="pre_mail_content_for_script_only_use_in_IE_replay" style="display: none"></pre>
		<script type="text/javascript">
			var mail_content_for_script_only_use_in_IE_replay = "";
		</script>
		<script language="javascript" type="text/javascript">
			resizePage(1);

			getTop().disableAll(true);

			function autoReloadJS(_abOnlyCheck)

			{

				var _oTop = getTop();

				function _fCheck()

				{

					return _oTop.initComposeForPage && _oTop.QMAddrInput;

				}

				if(_fCheck())

				{

					return initCompose();

				}

				if(!autoReloadJS._nTimes)

				{

					autoReloadJS._nTimes = 0;

				}

				if(!autoReloadJS._nWait)

				{

					autoReloadJS._nWait = setTimeout(function()

						{

							_oTop.showProcess(1, true, '正在加载写信模块...', "", false);

							_oTop.waitFor(_fCheck, autoReloadJS, 300, 120 * 1000);

						}, 1500);

				} else

				{

					_oTop.showProcess(1, true, '正在加载写信模块...', "", false);

				}

				if(!_abOnlyCheck)

				{

					reloadComposeJS(true);

				}

				autoReloadJS._nTimes++;

				_oTop.waitFor(_fCheck, function(_abOK)

					{

						if(!_abOK && autoReloadJS._nTimes > 1)

						{

							_oTop.ossLog('realtime', 'all', 'kw=composeJsLoadErr');

							_oTop.showError('写信页面初始化失败，<a href="javascript:;" onclick="getTop().getMainWin().autoReloadJS();">重试</a>', -1);

						} else

						{

							autoReloadJS();

						}

					}, 300);

			}

			autoReloadJS(true);

			function initCompose()

			{

				if(initCompose._bInited)

				{

					return;

				}

				initCompose._bInited = true;

				var _oTop = getTop();

				_oTop.hiddenMsg();

				if(autoReloadJS._nWait)

				{

					clearTimeout(autoReloadJS._nWait);

				}

				_oTop.initComposeForPage("compose", window,

					{

						bIsGuideMap: "0",

						subtmpl: "cnew",

						sLocIcon: "https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/icon_locationCompose24c9f7.png",

						sLocIcon2x: "https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/icon_locationCompose_2x24c9f7.png",

						bNeedIdentifyLocation: true,

						sLocationIdentifyUrl: '//' + _oTop.location.hostname + '/zh_CN/htmledition/js/location_identify/location_identify_worker2911e7.js',

						sLocationWorkerImportUrl: '//' + _oTop.location.hostname + '/zh_CN/htmledition/js/location_identify/location_identify25f2fd.js',

						sPlusOpener: "",

						sFlashMode: "CheckPost",

						nAttBigSizeIn: 20,

						nAttBigSizeEx: 10,

						mailid: "",

						clearlistcache: false,

						xqqstyle: "",

						encryptmail: "",

						safemode: false,

						folderid: "",

						saveFrom: "",

						isNoInclude: parseInt("0"),

						onload: PageOnload,

						oninit: function()

						{

							initAddrCtrl(window, null, {
								bAddrTip: 1
							});

							try

							{

								initCookieSetting();

								setTimeout(function() {
									try {
										getTop().initComposeNewFuncTips();
									} catch(e) {}
								});
							} catch(_oError)

							{

								_oTop.doPageError(_oError.message, location.href, "0");

							}

						},

						attachs: [

						],

						bigattachs_auto: [

						],

						bigattachs: [

						]

					});

				_oTop.disableAll(false);

			}

			window.forwardName = "";

			window.forwardAddr = "";

			function resizeRightAddr(_anEditorHeight)

			{

				var _oTop = getTop(),

					_oContainer = _oTop.S('quickaddr_div', window),

					_nDefaultContainerHeight = 411,

					_nMinQMEditorHeight = 319,

					_nOffsetHeight = _oContainer.offsetTop,

					_nScrollHeight = _anEditorHeight - _nMinQMEditorHeight,

					_nWindowHeight = _oTop.document.documentElement.clientHeight,

					_nNewHeight = _nDefaultContainerHeight + _nScrollHeight;

				if(_nNewHeight > 0 && _nOffsetHeight + _nNewHeight < _nWindowHeight)

				{

					_oContainer.style.height = _nNewHeight + 'px';

					_oTop.S('rightAreaBtnWarp', window).style.height = Math.max(_nNewHeight - 200, 0) + 'px';

				}

			}

			function resizePage(_abIsInit)

			{

				var _oTop = getTop(),

					_oDom = _oTop.S("QMEditorArea", window),

					_oDomOpt = _oTop.S("composeMoreOpt", window),

					_oPos = _oTop.calcPos(_oDom, "json"),

					_nFullHeight = _oTop.bodyScroll(window, 'clientHeight'),

					_nGap = _oTop.gbIsIE ? (window.addEventListener ? 105 : 80) : 77,

					_nHeight = _nFullHeight - _oPos.top - _nGap;

				if(_abIsInit)

				{

					_oDomOpt.style.height = "29px";

					_oDom.style.height = (_nHeight > 0 ? _nHeight : 0) + "px";

					_nHeight && resizeRightAddr(_nHeight);

				} else

				{

					_oDomOpt.style.height = "auto";

				}

				//debug(_nFullHeight + " flag: " + _oDom.style.height + "_nHeight:" + _nHeight);

			};

			function getSubjectFromAttachName(_asFileName)

			{

				var _oNames = /(.*)\.(.*?)$/.exec(_asFileName);

				return _oNames ? _oNames[1] : _asFileName;

			}

			function PageOnload(_aInfo)

			{

				getTop().ossLogComposeInitTime.end('page');

				debug("pageOnload");

				resizePage(0);

				if(_aInfo.editorEverFocus)

				{

					focusPageEditor();

				} else

				{

					var oAD = getTop().QMAddrInput.get("to", getTop().getMainWin());

					oAD.get().length ? focusPageEditor() : oAD.focus("start");

				}

				initColorSubject();

			}

			function ErrorCallBack(_aoErrData)

			{

				if(_aoErrData && _aoErrData.appname == "ftnfilefunc")

				{

					getTop().showError(_aoErrData.errmsg);

				} else

				{

					getTop().disableAll(false);

					if(getTop().getProcessInfo().indexOf("正在保存") != -1)

					{

						getTop().showError(getTop().formatDate(new Date, "%hh%:%mm%", "%") + " " + getTop().gsMsgSaveErr);

					}

					enableAutoSave();

					setNeedCloseConform(true);

					getTop().showProcess(0);

				}

			}
		</script>
		<script type="text/javascript" src="js/stationery_new28766e.js"></script>
		<link rel="stylesheet" type="text/css" href="css/getcss.css">
		<style type="text/css">
			body {
				background: #fff;
				font: normal 12px Verdana, "Microsoft YaHei";
			}
			
			.MacOS body {
				font-family: Verdana;
			}
			
			.input_wd {
				width: 100%;
				padding: 2px 2px 0 2px;
				height: 22px;
			}
			
			textarea {
				padding: 2px 2px 0 2px;
				font: normal 14px Verdana;
			}
			
			.addr {
				border: 1px solid #718da6;
			}
			
			.pd {
				padding: 4px 10px 5px 0;
				min-width: 552px;
			}
			
			.pd1 {
				width: 100%;
				min-width: 695px;
			}
			
			.subtitle {
				padding-left: 20px;
				padding-top: 6px;
				vertical-align: top;
				font: normal 12px Verdana, "Microsoft YaHei";
			}
			
			.MacOS .subtitle {
				font-family: Verdana;
			}
			
			.input_title {
				margin: 0 0 6px 68px;
				zoom: 1;
			}
			
			.content_title {
				padding: 0 0 5px 12px;
			}
			
			.upload {
				display: none
			}
			
			.cptab {
				height: 24px;
				*hegiht: 23px;
			}
			
			.cpslt {
				height: 25px;
				*hegiht: 24px;
			}
			
			.cptab a {
				display: block;
				text-decoration: none;
				cursor: pointer;
			}
			
			@media screen and (-webkit-min-device-pixel-ratio:0) {}
			/*mp3 player*/
			
			.mp3player,
			.mp3screen {
				width: 280px;
				height: 63px;
				padding-left: 8px;
			}
			
			.mp3screen {
				height: 210px;
				padding: 0;
				border-bottom: none;
				position: absolute;
				margin-top: -210px;
				padding: 5px 5px 0;
			}
			
			.mp3player .bd,
			.mp3player .bd_upload {
				border-width: 1px;
			}
		</style><input id="ipt_showResumeConfirmFlag" value="" type="hidden">
		<!--<script type="text/javascript" src="https://rescdn.qqmail.com/zh_CN/htmledition/js/webp/bj-report39afc1.js"></script>-->
		<!-- <script type="text/javascript">
			getTop().BJ_REPORT.init({

				id: 111,

				url: "https://mail.qq.com/badjs",

				ignore: [/Script error/i],

				random: 0.1

			});

			var _oTop = getTop();

			_oTop.waitFor(

				function()

				{

					return _oTop.resetTopFrameError

				},

				function(_abIsOk)

				{

					if(_abIsOk)

					{

						_oTop.resetTopFrameError();

					}

				}

			);
		</script> -->
		<!-- <script type="text/javascript">
			getTop().xly_report.pageSpeed("78500210", window, 0.05);
		</script> -->
	</body>
	<!--<script type="text/javascript" src="https://rescdn.qqmail.com/zh_CN/htmledition/js/webp/speed-report29d207.js"></script>-->
</html>