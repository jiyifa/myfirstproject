<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<base href="${pageContext.request.contextPath }/"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="save" content="history">
        <title>QQ邮箱 - 写信</title>
        <script>
            document.domain = "localhost";
            function getTop() {
                var f = arguments.callee, w;
                !(f.execption) && (f.execption = "");
                if (!f.t) {
                    try {
                        w = window;
                        f.t = w != parent ? (parent.getTop ? parent.getTop() : parent.parent.getTop()) : w;
                    } catch (e) {
                        f.t = reTryGetTop();
                        f.execption = e.message;
                    }
                }
                return f.t;
            }
            function reTryGetTop() {
                var _oWin = window
                  , _oWinParent = parent;
                try {
                    while (_oWin != _oWinParent) {
                        _oWin = _oWinParent;
                        _oWinParent = _oWinParent.parent;
                    }
                } catch (e) {
                    ossLogForSetFrame.getTopException = true;
                }
                return _oWin;
            }
            ;try {
                window.top = getTop();
            } catch (e) {
                eval("var top=getTop();");
            }
            var gsUsed = "56";
            var gbSupportNW = true;
            var g_uin = "3261486093";
            window == getTop() && document.write('<script src="js/all3b5bca.js"></' + 'script>');
            (getTop().initPageEvent || function() {}
            )(window);
        </script>
        <script language="JavaScript">

            getTop().ossLogComposeInitTime('page');

            getTop().switchFolder("folder_newmail");

            if (!getTop().initComposeForPage)
            {

                getTop().LogKV('compose|js_not_ready');

            }

            function reloadComposeJS(_abReload) {

                var _oTop = getTop();

                _oTop.localReloadJsFile('/qqemail/js/qmaddrinput2392e83.js', function() {
                    return _oTop.QMAddrDomainCheck2
                }, 'qmaddrinput2', _abReload);

               /* _oTop.localReloadJsFile('/qqemail/js/compose23b5bca.js', function() {
                    return _oTop.initComposeForPage
                }, 'compose2', _abReload); */
                _oTop.localReloadJsFile('/qqemail/js/compose23aa739.js', function() {
                    return _oTop.initComposeForPage
                }, 'compose2', _abReload);

                /* _oTop.localReloadJsFile('/qqemail/js/editor3b5bc1.js', function() {
                    return _oTop.QMEditor
                }, 'editor', _abReload); */
                
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
        <link rel="stylesheet" type="text/css" href="css/comm2010392e89.css"/>
        <link rel="stylesheet" type="text/css" href="css/getcss.css"/>
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
                zoom:1;}

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
                background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/r_c1e9c5d.gif) no-repeat -48px 0;
                margin: 0 0 -1px 4px;
                height: 12px;
                width: 12px;
            }

            .arrowup {
                background: url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/r_c1e9c5d.gif) no-repeat -32px -1px;
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
            @media only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min-device-pixel-ratio: 2) {
                .arrowdown, .arrowup {
                    background-image:-webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/r_c1e9c5d.gif) 1x,url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/r_c@2X1e9c5d.png) 2x);
                }
            }
        </style>
        <style type="text/css">
            @media screen and (-webkit-min-device-pixel-ratio: 0) {
                select {
                    line-height:120%;
                }
            }
        </style>
        <style type="text/css">
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

            ul#show_paper,ul#list {
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

            #show_paper li,ul#list li {
                float: left;
                _display: inline;
                margin: 6px 8px 0 0;
                width: 74px;
                height: 74px;
                background: #f0f0f0;
            }

            #show_paper li a,ul#list li a {
                display: block;
                border: 1px solid #d3d3d3;
                height: 72px;
            }

            #show_paper li a:hover,ul#list li a:hover {
                border: 1px solid #e0a007;
            }

            #show_paper li img,ul#list li img {
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

            @media only screen and (-webkit-min-device-pixel-ratio: 2), only screen and (min-device-pixel-ratio: 2) {
                #page_span img.arrow_tableft_disable {
                    background-image:-webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tableft_disable1e9c5d.gif) 1x,url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tableft_disable@2X1e9c5d.gif) 2x);
                }

                #page_span img.arrow_tableft {
                    background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tableft1e9c5d.gif) 1x,url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tableft@2X1e9c5d.gif) 2x);
                }

                #page_span img.arrow_tabright_disable {
                    background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tabright_disable1e9c5d.gif) 1x,url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tabright_disable@2X1e9c5d.gif) 2x);
                }

                #page_span img.arrow_tabright {
                    background-image: -webkit-image-set(url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tabright1e9c5d.gif) 1x,url(https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/arrow_tabright@2X1e9c5d.gif) 2x);
                }
            }
        </style>
    </head>
    <body class="tbody" onbeforeunload="return closePage(event);">
        <script language="JavaScript">
            getTop().ossLogComposeInitTime.end('WScreen');
        </script>
        <form name="importqq_form" method="POST" action="/cgi-bin/addr_importqq?sid=Ul_esuY4fhhxu3kj" target="actionFrame">
            <input type="hidden" name="sid" value="Ul_esuY4fhhxu3kj">
            <input type="hidden" name="ImportType" value="Replace">
        </form>
        <form method="post" id="frm" name="frm" target="actionFrame" action="/email/compose_send" enctype="multipart/form-data">
            <input type="hidden" name="2242105aae46d089c8068006764f51f9" value="abb29ade931d0b1417960eebb643b5f2"/>
            <input type="hidden" name="sid" value="Ul_esuY4fhhxu3kj"/>
            <input type="hidden" name="bigattachcnt" value=""/>
            <input type="hidden" name="exstore" value=""/>
            <input type="hidden" name="from_s" value="cnew"/>
            <input type="hidden" id="swap" name="swap" value=""/>
            <input type="hidden" id="signtype" name="signtype" value=""/>
            <input name="newwin" type="hidden" value=""/>
            <input name="verifykey" id="verifykey" value="" type="hidden"/>
            <table cellspacing="0" cellpadding="0" border="0" class="composetab">
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
                                <a class="" onclick="saveContentGoUrl('/cgi-bin/grouplist?t=compose_group&sid=Ul_esuY4fhhxu3kj&newwin=');return false;" hidefocus>群邮件</a>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="composetab_img"></div>
                        <div class="composetab_unsel">
                            <div>
                                <a onclick="exitConfirm('redirectExitURLId(2)');return false;" hidefocus>贺卡</a>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div class="composetab_img"></div>
                        <div class="composetab_unsel">
                            <div>
                                <a onclick="exitConfirm('redirectExitURLId(10)');return false;" hidefocus>明信片</a>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
            <div id="toolbar">
                <div class="toolbg toolbgline" style="background-image:none;">
                    <div style="margin:5px 0 0 0;" class="right">
                        <a href="javascript:;" ck="compose_preview" class="btn_space">预览</a>
                        &nbsp;&nbsp;<a onClick="openNewWinEdit();return false;" href="javascript:;" tabindex="12" class="btn_space">新窗口写信</a>
                    </div>
                    <a name="sendbtn" tabindex="9" class="btn_gray btn_space" hidefocus href="javascript:;">发送</a>
                    <a name="timeSendbtn" tabindex="10" class="btn_gray btn_space" hidefocus href="javascript:;">定时发送</a>
                    <a name="savebtn" title="存草稿后，您可以在草稿箱中找回" tabindex="10" class="btn_gray btn_space" hidefocus href="javascript:;">存草稿</a>
                    <a name="closebtn" onClick="return exitConfirm('redirectExitURLId(1)');" tabindex="11" class="btn_gray btn_space" hidefocus href="javascript:;">关闭</a>
                </div>
            </div>
            <div class="readmailinfo" style="border-bottom:1px solid #fff;min-width:650px;_zoom:1;" id="sendtimepadding">
                <div id="rightArea" style="float:right;width:179px!important;width:180px;margin:16px 12px 0 0; margin:14px 14px 0 0\9;filter:none;">
                    <div id="addr_cmd" onMouseOver="if(this.className != 'cptab cpslt')this.className='cptab toolbg'" onMouseOut="if(this.className == 'cptab toolbg')this.className='cptab'" class="cptab cpslt" style="_width:88px;" onClick="changeTab('AddrTab');">
                        <a hidefocus>通讯录</a>
                    </div>
                    <div id="stationery_cmd" onMouseOver="if(this.className != 'cptab cpslt')this.className='cptab toolbg'" onMouseOut="if(this.className == 'cptab toolbg')this.className='cptab'" class="cptab" style="margin-left:89px;margin-left:90px\9;border-left-width:1px;border-left-width:0px\9;" onclick="useStationery_new();">
                        <a hidefocus>信&nbsp;&nbsp;纸</a>
                    </div>
                    <div style="height:25px;filter:none;" class="grptitle_tab_"></div>
                    <div id="AddrTab" class="addrtab cpright" style="">
                        <div id="quickaddr_div"></div>
                    </div>
                    <div id="stationery_div" class="cpright" style="position:relative;width:177px!important;width:178px;_width:179px;height:369px;display:none;">
                        <input type="hidden" id="stationeryCount" name="stationeryCount" value="">
                        <div style="height:27px;margin:6px 11px 0;">
                            <div id="page_span" style="float:right;font-size:14px;margin-top:4px">
                                <a id="paper_prev_b" href="javascript:;" disabled="true" class="paper_controller_btn">
                                    <img id="paper_prev_b_img" src="images/spacer1e9c5d.gif"/>
                                </a>
                                <span id="pageid"></span>
                                <a id="paper_next_b" href="javascript:;" class="paper_controller_btn">
                                    <img id="paper_next_b_img" src="images/spacer1e9c5d.gif"/>
                                </a>
                            </div>
                        </div>
                        <ul id="show_paper"></ul>
                        <div style="clear:both; position:absolute; bottom:2px; right:9px; width:155px;" id="new_stationery"></div>
                    </div>
                </div>
                <div id="rightAreaBtnWarp" style="float:right;margin:200px 3px 0 6px;height:220px;">
                    <a id="rightAreaBtn" style="font:bold 12px 宋体;text-decoration:none;color:#585858" onClick="hideRightArea(false)">
                        <input type="button" class="prefd"/>
                    </a>
                </div>
                <div style="margin-right:22px; margin-top:14px; clear:left;">
                    <div style="height:2px;display:block;*display:none;width:auto;">&nbsp;</div>
                    <div id="addrsDiv" class="js_addr_div">
                        <table cellpadding="0" cellspacing="0" class="i" border="0" id="trSC" style="width:auto;display:none;margin-bottom:5px;">
                            <tr>
                                <td style="*width:58px;*padding-right:10px;" valign="top" nowrap>
                                    <div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap>
                                        <a id="sc_btn" title="点击选择要分别发送的联系人" href="javascript:;">分别发送</a>
                                    </div>
                                </td>
                                <td class="content_title" width="99%" style="*padding-right:4px;">
                                    <div id="scAreaCtrl" class="noime div_txt">&nbsp;</div>
                                    <textarea id="sc" name="sc" size="100" class="txt input_wd rev noime" onFocus="setFocus('sc');" style="display:none;" disabled tabindex="2"></textarea>
                                </td>
                            </tr>
                        </table>
                        <table cellpadding="0" cellspacing="0" border="0" class="i" style="width:auto;margin-bottom:5px;" id="trTO">
                            <tr>
                                <td style="*width:58px;*padding-right:10px;" valign="top" nowrap>
                                    <div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap>
                                        <a id="to_btn" title="点击选择收件人" href="javascript:;">收件人</a>
                                    </div>
                                </td>
                                <td class="content_title" width="99%" style="*padding-right:4px;">
                                    <div id="toAreaCtrl" class="noime div_txt">&nbsp;</div>
                                    <textarea title="您可以在右侧中选择联系人给他们发信" id="to" name="to" class="noime txt input_wd rev" onFocus="setFocus('cc');" style="display:none;" tabindex="1" accesskey="t"></textarea>
                                    <input id="swap3" name="swap3" value="" type="hidden"/>
                                </td>
                            </tr>
                        </table>
                        <table cellpadding="0" cellspacing="0" border="0" class="i" id="trCC" style="width:auto;display:none;margin-bottom:5px;">
                            <tr>
                                <td style="*width:58px;*padding-right:10px;" valign="top" nowrap>
                                    <div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap>
                                        <span clss="f_family">&nbsp;&nbsp;&nbsp;</span>
                                        <a id="cc_btn" title="点击选择要抄送的联系人" href="javascript:;">抄送</a>
                                    </div>
                                </td>
                                <td class="content_title" width="99%" style="*padding-right:4px;">
                                    <div id="ccAreaCtrl" class="noime div_txt">&nbsp;</div>
                                    <textarea id="cc" name="cc" size="100" class="txt input_wd rev noime" onFocus="setFocus('cc');" style="display:none;" disabled tabindex="2"></textarea>
                                </td>
                            </tr>
                        </table>
                        <table cellpadding="0" cellspacing="0" border="0" class="i" id="trBCC" style="width:auto;display:none;margin-bottom:5px;">
                            <tr>
                                <td style="*width:58px;*padding-right:10px;" valign="top" nowrap>
                                    <div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap>
                                        <span clss="f_family">&nbsp;&nbsp;&nbsp;</span>
                                        <a id="bcc_btn" title="点击选择要密送的联系人" href="javascript:;">密送</a>
                                    </div>
                                </td>
                                <td class="content_title" width="99%" style="*padding-right:4px;">
                                    <div id="bccAreaCtrl" class="noime div_txt">&nbsp;</div>
                                    <textarea id="bcc" name="bcc" size="100" class="txt input_wd rev noime" onFocus="setFocus('bcc');" style="display:none;" disabled tabindex="2"></textarea>
                                </td>
                            </tr>
                        </table>
                        <div id="addrOper" style="overflow:hidden; min-height:22px; _zoom:1;">
                            <div class="input_title addrtitle">
                                <div style="float:left;white-space:nowrap;padding-left:1px;">
                                    <span>
                                        <a id="aCC" title="什么是抄送：&#10;同时将这一封邮件发送给其他联系人。" href="javascript:;">添加抄送</a>
                                        &nbsp;-&nbsp;<a id="aBCC" title="什么是密送：&#10;同时将这一封邮件发送给其他联系人，但收件人及抄送人不会看到密送人。" href="javascript:;">添加密送</a>
                                        &nbsp;|&nbsp;
                                    </span>
                                    <span style="display:none;">每个收件人将收到单独发给他/她的邮件。</span>
                                    <a id="aSC" title="什么是分送：&#10;会对多个人一对一发送。每个人将收到单独发给他/她的邮件。" href="javascript:;">分别发送</a>
                                </div>
                                <div class="addrtitle right" style="display:none;">
                                    您是否还要找：
                                    <span id="addrAssociation">
                                        <a href="">nicoyang</a>
                                        ，<a href="">angusdu</a>
                                        , <a href="">allen</a>
                                    </span>
                                </div>
                                <div class="clr"></div>
                            </div>
                        </div>
                    </div>
                    <table id="addrUrlCreator" cellpadding="0" cellspacing="0" border="0" class="i" style="display:none;width:auto;margin-bottom:5px;">
                        <tr>
                            <td style="*width:58px;*padding-right:10px;" valign="top" nowrap></td>
                            <td width="99%" id="receiverMsgContainer"></td>
                        </tr>
                        <tr>
                            <td style="*width:58px;*padding-right:10px;" valign="top" nowrap>
                                <div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap>收件人</div>
                            </td>
                            <td class="content_title" width="99%" style="*padding-right:4px;">
                                <div class="attbg bd urlcreator_to">
                                    <span class="ico_urlcreator"></span>
                                    <span>网页生成助手</span>
                                    <a onclick="rmHelper('urlcreator');" class="ico_close_mini" title="移除"></a>
                                </div>
                                <div style="margin:0 0 8px 0;clear:both;" class="addrtitle">
                                    试试给助手发封邮件。它会把邮件转成网页，并把网页的链接地址回复给你。<a href="http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001014&&id=23" target="_blank">了解更多</a>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <table id="addrQzone" cellpadding="0" cellspacing="0" border="0" class="i" style="display:none;width:auto;margin-bottom:5px;">
                        <tr>
                            <td style="*width:58px;*padding-right:10px;" valign="top" nowrap></td>
                            <td width="99%" id="receiverMsgContainer"></td>
                        </tr>
                        <tr>
                            <td style="*width:58px;*padding-right:10px;" valign="top" nowrap>
                                <div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap>收件人</div>
                            </td>
                            <td class="content_title" width="99%" style="*padding-right:4px;">
                                <div class="attbg bd urlcreator_to">
                                    <span class="ico_addrqzone"></span>
                                    <span>发表到我的Qzone</span>
                                    <a onclick="rmHelper('qzone');" class="ico_close_mini" title="移除"></a>
                                </div>
                                <div style="margin:0 0 8px 0;clear:both;" class="addrtitle">
                                    给“发表到我的Qzone”发信，即可把邮件内容以日志形式发表到Qzone上。<a href="http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=242&&id=23" target="_blank">了解更多</a>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <table cellpadding="0" cellspacing="0" border="0" class="i" style="width:auto;margin:5px 0;">
                        <tr>
                            <td style="*width:58px;*padding-right:10px;" valign="top" nowrap></td>
                            <td width="99%" id="receiverMsgContainer"></td>
                        </tr>
                        <tr>
                            <td style="*width:58px;*padding-right:10px;" valign="top" nowrap>
                                <div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap>
                                    <span title="主题是一封邮件的标题。">主题</span>
                                </div>
                            </td>
                            <td class="content_title" width="99%" style="*padding-right:4px;">
                                <div class="div_txt" style="cursor: text;" unselectable="on">
                                    <a hidefocus style="display:block;float:right;width:24px;text-decoration:none;">
                                        <input type="button" title="在QQ邮箱之间发送邮件时使用彩色标题。" id='cpanelBtn' hidefocus class="pointer"/>
                                    </a>
                                    <div style="margin-right:32px;height:16px;">
                                        <div style="_position:absolute;_width:100%;">
                                            <input id="subject" title="主题是一封邮件的标题，可不填。" name="subject" type="text" autocomplete="off" tabindex="2" class="" style="word-break:break-all;height:16px;line-height:16px;width:99%;border-width:0;" value="" onFocus="showSubjectMsg(false);"/>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="input_title" style="padding-top:10px;padding-bottom:8px;" onmousedown="QMAttach.hideDragAndDropContainer();">
                    <span style="display:none" id="attachupload"></span>
                    <span id="composecontainer">
                        <span class="compose_toolbtn qmEditorAttach dragAndDropTrap_box">
                            <span sizelimit="50" title="添加小于 50M 的文件作为附件" id="AttachFrame" onmouseover="getTop().addClass(getTop().finds('a',this)[0],'underline');" onmouseout="getTop().rmClass(getTop().finds('a',this)[0],'underline');" onmousedown="getTop().LogKV('compose|toolbar|entrance|attach');">
                                <a class="compose_toolbtn_text ico_att" onclick="return false;" onmousedown="getTop().LogKV('compose|toolbar|entrance|attach');return false;" hidefocus>
                                    <span id="sAddAtt1">添加附件</span>
                                    <span onclick="return false;" onmousedown="return false;" style="display:none;" id="sAddAtt2">继续添加</span>
                                </a>
                            </span>
                            <a class="ico_moreupload" id="moreupload"></a>
                        </span>
                        <span class="compose_toolbtn qmEditorAttachBig" onmousedown="return false;" ftnv2="true" onclick="getTop().LogKV('compose|toolbar|entrance|bigattach');initFileTransporter();return false" title="可以向任何邮箱发送最大 3G 的附件" id="bigAttachLink">
                            <a class="compose_toolbtn_text ico_attbig" hidefocus>超大附件</a>
                        </span>
                        <script type="text/javascript">
                            
if("true" == true 
|| (getTop().getOnlineAttachInfo && getTop().getOnlineAttachInfo() && getTop().getOnlineAttachInfo().sOpen == "1")){
var _sOnlineDoc = [
'<span class="compose_toolbtn qmEditorAttachBig" onmousedown="return false;" ftnv2="true" ',
'onclick="getTop().LogKV(\'compose|toolbar|entrance|span_online_doc\');showAddOnlineDocDlg();return false" ',
'title="在线文档" id="span_online_doc">',
'<a class="compose_toolbtn_text ico_editDoc" style="padding-left:20px;" hidefocus>在线文档</a>',
'</span>'].join("");
document.write(_sOnlineDoc);
}

                        </script>
                    </span>
                    <span id="QMEditorToolBarPlusArea"></span>
                    <script>
                        document.write(getTop().outputToolBarControlBtn());
                    </script>
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
                        <tr>
                            <td style="*width:58px;*padding-right:10px;" valign="top" nowrap>
                                <div style="width:58px;padding-right:10px;text-align:right;padding-top:6px" nowrap>正文</div>
                            </td>
                            <td class="content_title" style="padding-top:1px!important;padding-top:0;padding-right:0;width:99%;" valign="top">
                                <textarea id="content" name="content__html" style="display:none;"></textarea>
                                <div id="QMEditorArea" style="position:relative;" tIndex="3" accKey="q">
                                    <div class="qmEditorBase" style="border-bottom: 1px solid #C3C3C3;">
                                        <div class="qmEditorIfrmEditArea">
                                            <script>
                                                document.write(getTop().outputDataLoading(true));
                                            </script>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="composeMoreOpt" style="margin-top:5px;height:29px;float:left;width:100%;" class="settingtable">
                    <div style="margin:8px 0 0 68px">
                        <div style="float:left; height:20px; display:none;">
                            <div id="Senderdiv" style="float:left;"></div>
                            <span class="left addrtitle">&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;</span>
                            <input type=hidden id="sendmailname" name="sendmailname">
                        </div>
                        <div class="left" id="signSelContainer"></div>
                        <div class="left">
                            <span style="cursor:pointer;" id="otherComposeOptionBtn">
                                其他选项<img src="images/spacer1e9c5d.gif" class="arrowdown"/>
                            </span>
                            &nbsp;
                        </div>
                        <div class="clr"></div>
                    </div>
                    <div id="otherComposeOptionCntr" style="display:none;">
                        <div class="qqshowbd" style="padding:6px 8px;background:#FFF;margin:0 210px 8px 68px;margin-right:213px\9;padding-top:3px\9;_padding-top:10px;line-height:22px;overflow:hidden;zoom:1;">
                            <span class="nowrap left" style="margin-right:6px;">
                                <input title="勾选保存，邮件发送成功后，可返回已发送文件夹&#10;中查看此封已发邮件。" type="checkbox" id="savesendbox" tabindex="8" name="savesendbox" value="1" style="margin:2px 1px 0 0;_margin:-5px 1px 0 0;vertical-align:middle;">
                                <label style="cursor:pointer;vertical-align:middle;" for="savesendbox" title="勾选保存，邮件发送成功后，可返回已发送文件夹&#10;中查看此封已发邮件。">保存到"已发送"</label>
                                &nbsp;&nbsp;
                                <span id="auto_save_span" style="display:none">
                                    <input title="勾选保存，邮件发送成功后，可返回已发送文件夹&#10;中查看此封已发邮件。" type="checkbox" id="auto_save" name="auto_save" value="1" style="margin:2px 1px 0 0;_margin-top:-5px;vertical-align:middle;">
                                    <label style="cursor:pointer;vertical-align:middle;" for="auto_save">每次发信自动保存到"已发送"</label>
                                    &nbsp;&nbsp;
                                </span>
                                <input type="checkbox" id="high" tabindex="9" name="priority" title="邮件投递优先级" value="urgency" style="margin:2px 1px 0 0;_margin-top:-5px;vertical-align:middle;"/>
                                <label style="cursor:pointer;vertical-align:middle;" for="high" title="邮件投递优先级">紧急</label>
                                &nbsp;&nbsp;<input title="启用回执功能&#10;您可以了解收件人是否阅读了您发送的邮件" type="checkbox" id="receipt" name="receipt" value="receipt" tabindex="10" style="margin:2px 1px 0 0;_margin-top:-5px;vertical-align:middle;"/>
                                <label style="cursor:pointer;vertical-align:middle;" for="receipt" title="启用回执功能&#10;您可以了解收件人是否阅读了您发送的邮件">需要回执</label>
                            </span>
                            <wbr/>
                            <span class="nowrap left" style="margin-right:6px;">
                                <input id="contenttype" name="contenttype" value="text" style="margin:2px 1px 0 0;_margin-top:-5px;vertical-align:middle;" type="checkbox" onclick="changeContentType(this);" title="把邮件内容切换成纯文本&#10;它将无法插入图片、表情，以及&#10;将丢失正文颜色等"/>
                                <label style="cursor:pointer;vertical-align:middle;" for="contenttype" title="把邮件内容切换成纯文本&#10;它将无法插入图片、表情，以及&#10;将丢失正文颜色等">纯文本</label>
                                &nbsp;&nbsp;<input id="noletter" name="noletter" value="1" type="checkbox" style="margin:2px 1px 0 0;_margin-top:-5px;vertical-align:middle;" onClick="" title=""/>
                                <label style="cursor:pointer;vertical-align:middle;" for="noletter" title="">使用信纸</label>
                            </span>
                            <wbr/>
                            <span class="nowrap left" style="position:relative;">
                                <input title="加密" type="checkbox" name="secmailcode" id="secmailcode" value="" style="margin:2px 1px 0 0;_margin-top:-5px;vertical-align:middle;"/>
                                <label style="cursor:pointer;vertical-align:middle;" for="secmailcode">对邮件加密</label>
                            </span>
                        </div>
                        <div class="clr"></div>
                    </div>
                </div>
                <div class="clr"></div>
            </div>
            <div id="toolbar" class="clear">
                <div class="toolbg toolbgline">
                    <a name="sendbtn" tabindex="5" class="btn_gray btn_space" hidefocus href="javascript:;">发送</a>
                    <a name="timeSendbtn" tabindex="6" class="btn_gray btn_space" hidefocus href="javascript:;">定时发送</a>
                    <a name="savebtn" title="存草稿后，您可以在草稿箱中找回" tabindex="7" class="btn_gray btn_space" hidefocus href="javascript:;">存草稿</a>
                    <a name="closebtn" onClick=" exitConfirm('redirectExitURLId(1)');" tabindex="8" class="btn_gray btn_space" hidefocus href="javascript:;">关闭</a>
                </div>
            </div>
            <div style="display:none;">
                <input id="swap2" name="swap2" value="" type="hidden"/>
                <input id="transattach" name="transattach" value="" type="hidden"/>
                <input id="SrcMailCharset" name="SrcMailCharset" value="" type="hidden"/>
                <input id="xqqstyle" name="xqqstyle" value="" type="hidden"/>
                <input id="mailbgmusic" name="mailbgmusic" type="hidden" value="">
                <input id="actiontype" name="actiontype" value="send" type="hidden"/>
                <input id="priority" name="priority" value="" type="hidden"/>
                <input id="sendname" name="sendname" value="" type="hidden"/>
                <input id="acctid" name="acctid" value="0 " type="hidden"/>
                <input id="ReAndFw" name="ReAndFw" type="hidden">
                <input id="separatedcopy" name="separatedcopy" value="false" type="hidden"/>
                <input id="fmailid" name="fmailid" type="hidden">
                <input id="ReAndFwMailid" name="ReAndFwMailid" type="hidden"/>
                <input id="cattachlist" name="cattachelist" type="hidden"/>
                <input id="upfilelist" name="upfilelist" type="hidden"/>
                <input id="rsturl" name="rsturl" type="hidden"/>
                <input id="fileidlist" name="fileidlist" type="hidden"/>
                <input id="t" name="t" value="" type="hidden"/>
                <input id="verifycode" name="verifycode" value="" type="hidden"/>
                <input id="verifycode_cn" name="verifycode_cn" value="" type="hidden"/>
                <input id="s" name="s" value="comm" type="hidden"/>
                <input id="from" name="from" value="" type="hidden"/>
                <input id="hitaddrbook" name="hitaddrbook" value="0" type="hidden"/>
                <input id="selfdefinestation" name="selfdefinestation" value="-1" type="hidden"/>
                <input id="backurl" name="backurl" value="" type="hidden"/>
                <input id="noatcp" name="noatcp" value="" type="hidden"/>
                <input id="domaincheck" name="domaincheck" value="0" type="hidden">
            </div>
        </form>
        <pre id="source" style="display:none;"></pre>
        <pre id="pre_mail_content_for_script_only_use_in_IE_replay" style="display: none"></pre>
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

if (_fCheck())

{

return initCompose();

}



if (!autoReloadJS._nTimes)

{

autoReloadJS._nTimes = 0;

}

if (!autoReloadJS._nWait)

{

autoReloadJS._nWait = setTimeout(function()

{

_oTop.showProcess(1, true, '正在加载写信模块...', "", false);

_oTop.waitFor(_fCheck, autoReloadJS, 300, 120*1000);

}, 1500);

}

else

{

_oTop.showProcess(1, true, '正在加载写信模块...', "", false);

}



if (!_abOnlyCheck)

{

reloadComposeJS(true);

}



autoReloadJS._nTimes++;

_oTop.waitFor(_fCheck, function(_abOK)

{

if (!_abOK && autoReloadJS._nTimes > 1)

{

_oTop.ossLog('realtime', 'all', 'kw=composeJsLoadErr');

_oTop.showError('写信页面初始化失败，<a href="javascript:;" onclick="getTop().getMainWin().autoReloadJS();">重试</a>', -1);

}

else

{

autoReloadJS();

}

}, 300);

}



autoReloadJS(true);





function initCompose()

{ 

if (initCompose._bInited)

{

return;

}

initCompose._bInited = true;



var _oTop = getTop();

_oTop.hiddenMsg();

if (autoReloadJS._nWait)

{

clearTimeout(autoReloadJS._nWait);

}



_oTop.initComposeForPage( "compose", window,

{

bIsGuideMap : "0",

        subtmpl: "cnew",

sLocIcon: "https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/icon_locationCompose24c9f7.png",

sLocIcon2x: "https://rescdn.qqmail.com/zh_CN/htmledition/images/webp/newicon/icon_locationCompose_2x24c9f7.png",

 bNeedIdentifyLocation: true,

sLocationIdentifyUrl: '//'+_oTop.location.hostname+'/zh_CN/htmledition/js/location_identify/location_identify_worker2911e7.js',

sLocationWorkerImportUrl: '//'+_oTop.location.hostname+'/zh_CN/htmledition/js/location_identify/location_identify25f2fd.js',

sPlusOpener : "",

sFlashMode : "CheckPost",

nAttBigSizeIn : 20,

nAttBigSizeEx : 10,

mailid: "",

clearlistcache : false,

xqqstyle : "",

encryptmail : "",

safemode: false,

folderid: "",

        saveFrom: "",

isNoInclude: parseInt("0"),

onload: PageOnload,

oninit: function()

{

initAddrCtrl(window,null,{bAddrTip:1});

try 

{

initCookieSetting();

setTimeout(function(){
try{
getTop().initComposeNewFuncTips();
}catch(e){}
});
}

catch(_oError)

{

_oTop.doPageError(_oError.message, location.href, "0");

}

},

attachs: [

],

bigattachs_auto : [

],

bigattachs : [

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

            _oTop.S('rightAreaBtnWarp', window).style.height = Math.max(_nNewHeight - 200, 0)+'px';

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

}

else

{

_oDomOpt.style.height = "auto";

}

debug(_nFullHeight + " flag: " + _oDom.style.height + "_nHeight:" + _nHeight);

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

if ( _aInfo.editorEverFocus )

{

focusPageEditor();

}

else

{

var oAD = getTop().QMAddrInput.get("to",getTop().getMainWin());

oAD.get().length ? focusPageEditor() : oAD.focus("start");

}

initColorSubject();



                            }



function ErrorCallBack(_aoErrData)

{

if (_aoErrData && _aoErrData.appname == "ftnfilefunc")

{

getTop().showError(_aoErrData.errmsg);

}

else

{

getTop().disableAll(false);

if (getTop().getProcessInfo().indexOf("正在保存") != -1)

{

getTop().showError(getTop().formatDate(new Date, "%hh%:%mm%", "%") + " " + getTop().gsMsgSaveErr);

}

enableAutoSave();

setNeedCloseConform( true );

getTop().showProcess(0);

}

}


        </script>
        <script type="text/javascript" src="js/stationery_new28766e.js"></script>
        <link rel="stylesheet" type="text/css" href="css/getcss.css"/>
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
                zoom:1;}

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

            @media screen and (-webkit-min-device-pixel-ratio: 0) {
            }

            /*mp3 player*/
            .mp3player, .mp3screen {
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

            .mp3player .bd,.mp3player .bd_upload {
                border-width: 1px;
            }
        </style>
        <input id="ipt_showResumeConfirmFlag" value="" type="hidden">
        <!--<script type="text/javascript" src="js/bj-report39afc1.js"></script>-->
        <script type="text/javascript">
            

getTop().BJ_REPORT.init({

id   : 111,

url    : "https://mail.qq.com/badjs",

ignore : [/Script error/i],

random : 0.1

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


        </script>
    </body>
    <!--<script type="text/javascript" src="js/speed-report29d207.js"></script>-->
    <script type="text/javascript">
        

    getTop().xly_report.pageSpeed("78500210" ,window,  0.05);  


    </script>
</html>
    