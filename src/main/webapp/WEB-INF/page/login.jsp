<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0020)https://mail.qq.com/ -->
<html lang="zh-cmn">
	<head>
		<base href="${pageContext.request.contextPath }/"/>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>登录QQ邮箱</title>
		<meta name="renderer" content="webkit">
		<meta name="save" content="history">
		<meta name="description" content="QQ邮箱，为亿万用户提供高效稳定便捷的电子邮件服务。你可以在电脑网页、iOS/iPad客户端、及Android客户端上使用它，通过邮件发送3G的超大附件，体验文件中转站、日历、记事本、漂流瓶等特色功能。QQ邮箱，常联系。">
		<link rel="stylesheet" type="text/css" href="css/loginpage25194d.css">
		<link rel="icon" type="images/png" sizes="16*16" href="https://mail.qq.com/zh_CN/htmledition/images/favicon/qqmail_favicon_16h.png">
		<link rel="icon" type="images/png" sizes="32*32" href="https://mail.qq.com/zh_CN/htmledition/images/favicon/qqmail_favicon_32h.png">
		<link rel="icon" type="images/png" sizes="48*48" href="https://mail.qq.com/zh_CN/htmledition/images/favicon/qqmail_favicon_48h.png">
		<link rel="icon" type="images/png" sizes="96*96" href="https://mail.qq.com/zh_CN/htmledition/images/favicon/qqmail_favicon_96h.png">
		<meta name="theme-color" content="gray">
	</head>

	<body>
		<script type="text/javascript">
			var reportPtlogin = (function() {
				var gbIsPTReport = false,
					gnPTTimer = setTimeout(function() {
						reportPtlogin(-1);
					}, 5000);
				return function(_anRet) {
					clearTimeout(gnPTTimer);

					if(!gbIsPTReport) {
						gbIsPTReport = true;

						var _oImg = document.createElement("img"),
							_sUserName = document.getElementById("u") && encodeURIComponent(document.getElementById("u").value) || "",
							_sDomain = "https://rl.mail.qq.com" || "https://rl.mail.qq.com",
							_sStat = _sDomain + "/cgi-bin/getinvestigate?stat=loginerr&code=#code#&err=&un=" + _sUserName + "&r=" + Math.random();
						_sStat = _sStat.replace("#code#", ({
							"1": 920,
							"0": 921,
							"-1": 922
						})[_anRet]);
						_oImg.src = _sStat;
						_oImg.style.display = "none";
						document.body.appendChild(_oImg);
						_oImg = null;
					}
				}
			})();
		</script><img src="./登录QQ邮箱_files/testimg" style="display:none" onload="reportPtlogin(1)" onerror="reportPtlogin(0)">
		<div class="container">
			<div class="header">
				<a class="header_logo" href="https://mail.qq.com/">QQ邮箱</a>
				<div class="header_link">
					<a href="http://w.mail.qq.com/cgi-bin/loginpage?f=xhtml">基本版</a>&nbsp;|&nbsp;
					<a href="http://en.mail.qq.com/">English</a>&nbsp;|&nbsp;
					<a href="http://app.mail.qq.com/" target="_blank">手机版</a>&nbsp;|&nbsp;
					<a href="http://exmail.qq.com/?referrer=index_top" target="_blank">企业邮箱</a>
				</div>
			</div>
			<div class="content">
				<div id="downError" class="login_msg" style="display:none;">
					<p><span class="login_msg_warning"></span>由于加载安全组件失败，为了您的帐号安全，无法正常登录邮箱，解决方法：</p>
					<ul>
						<li>按下F5重新刷新页面。</li>
						<li>打开浏览器“选项”菜单，选择“Internet选项”，执行清空缓存功能，确定后按F5刷新本页面。</li>
						<li>如上述方式仍然无法解决问题，请登录
							<a href="http://maildisk.bbs.qq.com/" target="_blank">邮箱论坛通知我们</a>，我们将尽快为您解决。</li>
					</ul>
				</div>
				<div class="content_wrapper">
					<div class="login_container" id="login" style="width: 334px; height: 387px; visibility: visible;"> 
					<iframe id="login_frame" name="login_frame" height="100%" scrolling="no" width="100%" frameborder="0" src="inframe/xlogin.html"></iframe>
						<div class="login_box second_login_box" style="display:none;">
							<div class="login_box_header">
								<h1 class="login_box_title">登录QQ邮箱</h1></div>
							<div id="msgContainer" class="login_box_msg" style="display:none;"></div><noscript>&lt;div class="login_box_msg noScript"&gt;您的浏览器不支持或已经禁止网页脚本，您无法正常登录。&lt;a href="/zh_CN/help/error_noscript.html" title="了解网页脚本限制的更多信息" target="_blank"&gt;&lt;img src="https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/ico_help1e9c5d.gif" style="margin:0 2px;" align="absmiddle" /&gt;如何解除脚本限制&lt;/a&gt;&lt;/div&gt;</noscript>
							<div class="login_box_msg noCookie" id="infobarNoCookie" style="display:none">你的浏览器不支持或已经禁止使用Cookie，导致无法正常登录。请
								<a href="http://service.mail.qq.com/cgi-bin/help?subtype=1&amp;&amp;id=7&amp;&amp;no=1001007#chrome" title="了解Cookie的更多信息" target="_blank">启用Cookie<img src="images/ico_help1e9c5d.gif" style="margin:0 2px;" align="absmiddle"></a>后重试。</div>
							<div style="display:none" id="qlogin" class="qlogin"></div>
							<div class="login_operate" id="web_login">
								<form id="loginform" onsubmit="return QMLogin.checkInput();" method="post" name="loginform" target="_self" autocomplete="on">
									<div class="login_submit" style=""><input class="login_button" id="btlogin" name="btlogin" type="submit" value="登录" tabindex="5"></div>
								</form>
							</div>
							<a class="login_box_forgotpassword" href="https://aq.qq.com/cn2/findpsw/pc/pc_find_pwd_input_account?pw_type=6&amp;aquin=&amp;source_id=2705" target="_blank">忘了密码？</a>
							<div style="display:none;" id="switch" class="lineright" onmouseup="QMLogin.switchMode()"></div>
						</div>
					</div>
					<div class="login_pictures">
						<div class="login_pictures_picture" style="background-image:url(&#39;images/tg-mj1e9c5d.jpg&#39;);background-position:right 20px;"></div>
					</div>
				</div>
			</div>
			<div class="footer">
				<a href="http://www.tencent.com/" target="_blank">关于腾讯</a>&nbsp;|&nbsp;
				<a href="http://mail.qq.com/cgi-bin/readtemplate?check=false&amp;t=mail_clause" target="_blank">服务条款</a>&nbsp;|&nbsp;
				<a href="http://kf.qq.com/product/email.html" target="_blank">客服中心</a>&nbsp;|&nbsp;
				<a href="http://mail.qq.com/contact_us.html" target="_blank">联系我们</a>&nbsp;|&nbsp;
				<a href="http://service.mail.qq.com/" target="_blank">帮助中心</a>&nbsp;|&nbsp;<span class="gray">©1998 - 2018 Tencent Inc. All Rights Reserved.</span></div>
		</div><img src="./登录QQ邮箱_files/getinvestigate" style="display: none;">
		<script type="text/javascript">
			if(typeof window.postMessage !== 'undefined') {
				window.onmessage = function(event) {
					var msg = event || window.event;
					var data;
					if(typeof JSON !== 'undefined') data = JSON.parse(msg.data);
					else
						data = str2JSON(msg.data);

					switch(data.action) {
						case 'close':
							ptlogin2_onClose();
							break;
						case 'resize':
							ptlogin2_onResize(data.width, data.height);
							break;
						default:
							break;
					}
				}
			}

			function str2JSON(str) {
				eval('var __pt_json=' + str);
				return __pt_json;
			}

			function ptlogin2_onResize(width, height) {
				var login_wnd = document.getElementById("login");
				if(login_wnd) {
					login_wnd.style.width = width + "px";
					login_wnd.style.height = height + "px";
					login_wnd.style.visibility = "hidden";
					login_wnd.style.visibility = "visible";
				}
			}

			(function() {
				var _sLen = document.cookie.length,
					_nCookieNum = Math.random(),
					_sTestCookie = ["test", _nCookieNum, "test=test", ";expires=Thu, 01 Jan 9970 00:00:00 GMT", ";path=/", ";domain=.mail.qq.com"].join("");
				document.cookie = _sTestCookie;
				if(document.cookie.length == _sLen) {
					document.getElementById("infobarNoCookie").style.display = "";
				}
				_sTestCookie = ["test", _nCookieNum, "test=test", ";expires=Thu, 01 Jan 1970 00:00:00 GMT", ";path=/", ";domain=.mail.qq.com"].join("");
				document.cookie = _sTestCookie;
			})();
		</script>
	</body>
	<style type="text/css" id="2489281971"></style>

</html>