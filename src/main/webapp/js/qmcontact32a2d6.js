var QMContactAdaptor=(function(f){
var m=getTop();
function n(q)
{
q.value='';
q.style.cssText='';
m.rmClass(q,"placeholder");
}
function d(q,r)
{
if(!q.value)
{
q.value=r;
q.style.cssText='color: rgb(160,160,160)';
m.addClass(q,"placeholder");
}
m.addEvent(q,"focus",function(){
if(q.value==r)
{
n(q);
}
});
m.addEvent(q,"blur",function(){
if(q.value=='')
{
q.value=r;
q.style.cssText='color: rgb(160,160,160)';
m.addClass(q,"placeholder");
}
});
}
function e(q)
{
var r=q.length>=0?q:[q];
for(var t=0;t<r.length;t++)
{
if(!r[t].getAttribute("_has_placeholder"))
{
var s=r[t].getAttribute("default")||"";
if(m.gbIsIE&&m.gnIEVer<10.0)
{
d(r[t],s);
}
else{
r[t].setAttribute("placeholder",s);
}
r[t].setAttribute("_has_placeholder","1");
}
}
}
;function a(q)
{
var r=q.length>=0?q:[q];
for(var s=0;s<r.length;s++)
{
if(!r[s].getAttribute("_has_editlabel"))
{
g(r[s]);
r[s].setAttribute("_has_editlabel","1");
}
}
}
;function g(q)
{
m.addEvent(q,"mouseout",function(){
m.hasClass(q,"edit")&&m.rmClass(q,"edit");
});
m.addEvent(q,"mouseover",function(){
!m.hasClass(q,"edit")&&m.addClass(q,"edit");
});
m.addEvent(q,"click",function(){
var r=q.getAttribute("ui-type");
if(r=="editmenu")
{
b(q);
}
else if(r=="edit")
{
c(q);
}
});
}
;function c(r,q)
{
function u()
{
if(r.getAttribute("_has_editover"))
{
return true;
}
m.finds("span",r)[0].innerHTML=s.value?m.htmlEncode(s.value):t;
m.show(r,true);
m.removeSelf(s.parentNode);
s=f;
m.rmClass(r.parentNode,"column_editing");
q&&q();
}
if(q)
{
m.insertHTML(r,"afterEnd",'<label ui-type="edit_caption" class="caption caption_editing_menu"><em class="ico_select_s"></em></label>');
}
else{
m.insertHTML(r,"afterEnd",'<label ui-type="edit_caption" class="caption caption_editing"></label>');
}
var s=document.createElement("input"),t=m.htmlDecode(m.finds("span",r)[0].innerHTML);
s.className="txt_caption";
s.type="text";
s.value=t;
s.onblur=function(){
u();
};
s.onkeydown=function(v){
var w=v||event;
w.keyCode==13&&u();
};
m.show(r,false);
m.finds("label[ui-type='edit_caption']",r.parentNode)[0].appendChild(s);
setTimeout(function(){
s.select();
});
m.addClass(r.parentNode,"column_editing");
}
;function b(q)
{
var u=q.getAttribute("data-menu").split(","),t=[],v=m.calcPos(q),s=document.createElement("div");
c(q,function(){
s&&m.removeSelf(s);
});
var r=m.finds("input",q.parentNode)[0];
s.className="caption_menu menu_bd";
s.innerHTML=m.TE(['$@$for($oList$)$@$','<a href="javascript:;" class="caption_menu_item" default="$_this_$" ui-type="edit_menu_item">$_this_$</a>','$@$endfor$@$']).replace({oList:u});
r.onclick=function(){
m.show(s,true);
};
s.onclick=function(w){
var y=w||event,x=m.getEventTarget(y);
if(x.getAttribute("ui-type")=="edit_menu_item")
{
r.value=x.getAttribute("default");
r.select();
m.show(s,false);
}
};
s.onmouseover=function(){
q.setAttribute("_has_editover",1);
};
s.onmouseout=function(){
q.removeAttribute("_has_editover");
};
q.parentNode.insertBefore(s,q);
}
;function k()
{
var q=arguments[0];
for(var r=1,t=arguments.length;r<t;r++)
{
if(arguments[r])
{
for(var s in arguments[r])
{
if(typeof (q[s])=="undefined")
{
if(({}).toString.call(arguments[r][s])=="[object Object]")
{
q[s]=m.extend({},arguments[r][s]);
}
else if(({}).toString.call(arguments[r][s])=="[object Array]")
{
q[s]=[].concat(arguments[r][s]);
}
else{
q[s]=arguments[r][s];
}
}
else if(arguments[r][s]&&({}).toString.call(arguments[r][s])=="[object Object]")
{
k(q[s],arguments[r][s]);
}
else if(arguments[r][s]&&({}).toString.call(arguments[r][s])=="[object Array]")
{
q[s]=[m.extend({},q[s][0])];
while(arguments[r][s].length>q[s].length)
{
q[s].push(m.extend({},q[s][0]));
}
while(arguments[r][s].length<q[s].length&&(s=="oGroup"||q[s].length>1))
{
q[s].pop();
}
k(q[s],arguments[r][s]);
}
else{
q[s]=arguments[r][s];
}
}
}
}
return q;
}
var l;
function j()
{
if(typeof (arguments[0])=="string")
{
var r=arguments[0],q=arguments[1];
if(!m[r])
{
m.loadJsFileToTop(l[r]);
}
if(q)
{
m.waitFor(function(){
return !!m[r];
},function(t){
if(t)
{
QMContactAdaptor[r]=m[r]&&q(QMContactAdaptor[r]=m[r]);
}
});
}
}
else{
l=arguments[0];
for(var s in l)
{
j(s);
}
}
}
;function h(q,r)
{
var s=q.oGroup||[];
for(var t=0;t<s.length;t++)
{
if(s[t].sId==r)
{
return true;
}
}
return false;
}
;function p()
{
var q=arguments[0],r=(typeof q=="object"?arguments[1]:arguments[2])||location.href.replace(/#.*$/g,""),t=r.substr(0,r.indexOf("?")),s=r.substr(r.indexOf("?"),r.length);
switch(typeof q)
{case "object":
for(var u in q)
{
s=o(u,q[u],s);
}
break;
case "string":
s=o(arguments[0],arguments[1],s);
break;
default:
}return t+s;
}
;function o(q,s,r)
{
var t=new RegExp("([?&]"+q+"=)([^&#]*)?"),u=s?s:"";
return (t.test(r)?r.replace(t,"$1"+u):[r,"&",q,"=",u].join(""));
}
;function i(q)
{
return {"ie":m.gbIsIE,"chrome":m.gbIsChrome,"ff":m.gbIsFF,"webkit":m.gbIsWebKit,"safari":m.gbIsSafari}[q]||false;
}
;return {S:m.S,T:m.T,TE:m.TE,attr:m.attr,trim:m.trim,getPath:m.getPath,getSid:m.getSid,attr:m.attr,insertHTML:m.insertHTML,htmlDecode:m.htmlDecode,htmlEncode:m.htmlEncode,liveEvent:m.liveEvent,addEvent:m.addEvent,QMAjax:m.QMAjax,evalValue:m.evalValue,encodeURI:m.encodeURI,confirmBox:m.confirmBox,encodeURI:m.encodeURI,subAsiiStr:m.subAsiiStr,binds:m.addEvents,contains:m.isObjContainTarget,extend:m.extend,finds:m.finds,parents:m.parents,removeSelf:m.removeSelf,hasClass:m.hasClass,addClass:m.addClass,rmClass:m.rmClass,evalCss:m.evalCss,showInfo:m.showInfo,showError:m.showError,getPath:m.getPath,preventDefault:m.preventDefault,stopPropagation:m.stopPropagation,getEventTarget:m.getEventTarget,bodyScroll:m.bodyScroll,show:m.show,merge:k,placeholder:e,removePlaceholder:n,editlabel:a,isBrowser:i,useCom:j,hasGroup:h,urlReplacer:p,confirmBox:m.confirmBox,calcPos:m.calcPos,openComposeDlg:m.openComposeDlg,QMMenu:m.QMMenu,QMSelect:m.QMSelect,QMDialog:m.QMDialog};
})();
var QMContact=(function(a,e){
var f={};
var d=(function(g,h){
var m={},k={},j={},i=function(n){
n=n||"";
return typeof (n)=="string"?n:n.id;
},l={_fCreate:function(p,n,o){
var r=o&&m[o],s=i(p),q=m[s]=function(){
if(!j[s])
{
j[s]=this;
}
this.getModuleName=function(){
return s;
};
this.getSuperName=function(){
return o||"";
};
this.setDriven=function(t){
this["__evt__"]=t;
};
this.getDriven=function(){
return this["__evt__"]||{};
};
arguments.length&&this.init_&&this.init_.apply(this,arguments);
};
n.call(q.prototype=r?new r():{},r?r.prototype:{},d);
return q;
},_fUse:function(o,n){
var p=i(o);
if(!k[p])
{
k[p]=new m[p](n);
}
return this;
},_fCmd:function(){
var o=i(arguments[0]),n=arguments[1];
for(var p in k)
{
if(p==o)
{
k[o].action_.apply(k[o],[n]);
break;
}
}
return this;
},_fMsg:function(){
var o=arguments[0];
for(var p in k)
{
for(var n in k[p].getDriven()["msg"])
{
if(n==o)
{
k[p].getDriven()["msg"][n].apply(k[p],[].slice.call(arguments,1));
}
}
}
return this;
},_fWhisper:function(){
var o=arguments[0];
for(var p in k)
{
for(var n in k[p].getDriven()["msg"])
{
if(n==o&&k[p].isShow())
{
k[p].getDriven()["msg"][n].apply(k[p],[].slice.call(arguments,1));
}
}
}
return this;
},_fClear:function(n){
var o=i(n);
if(o)
{
if(k[o])
{
k[o].destory_();
delete m[o];
}
}
else{
for(var p in k)
{
k[p].destory_();
}
for(var p in m)
{
delete m[p];
}
}
},_fgetModuleClass:function(n){
return j[n];
}};
l._fCreate("Base",function(o,n){
this.init_=function(p){
var q=p||{};
if(!q.oContainer)
{
debug([this.getModuleName(),"\u6A21\u5757\u5BB9\u5668\u4E3A\u7A7A"].join(" "));
}
if(!q.oViewCenter)
{
debug([this.getModuleName(),"\u6A21\u5757view\u4E3A\u7A7A"].join(" "));
}
if(!q.oDataCenter)
{
debug([this.getModuleName(),"\u6A21\u5757data\u4E3A\u7A7A"].join(" "));
}
this.view=q.oViewCenter;
this.data=q.oDataCenter;
this._moDomContainer=q.oContainer;
this.activate();
};
this.action_=function(){
this.show();
};
this.destory_=function(){
debug("destory_"+this.getModuleName());
delete k[this.getModuleName()];
this.view=h;
this.data=h;
this._moDomContainer=h;
};
this.register=function(){
var s=this;
var q=[].slice.call(arguments,0),r={},p=function(){
if(q.length)
{
var t=q.shift();
for(var u in t)
{
!r[u]&&(r[u]={});
g.extend(r[u],t[u]);
}
p();
}
else{
s.setDriven(r);
}
};
p();
};
this.msg=function(){
l._fMsg.apply(null,arguments);
};
this.cmd=function(){
l._fCmd.apply(null,arguments);
};
this.wsp=function(){
l._fWhisper.apply(null,arguments);
};
this.getModuleClass=function(p){
return l._fgetModuleClass.apply(arguments);
};
this.activate=function(){
var s=this,q=this.getDriven(),r={},p={};
for(var u in q)
{
if(u!="msg")
{
r[u]={};
for(var t in q[u])
{
r[u][t]={bPropagable:q[u][t].bPropagable||false};
p[t]=function(v){
return function(w,x){
v.fHandle.apply(s,[w,x]);
};
}(q[u][t]);
}
}
}
;if(u&&s._moDomContainer)
{
g.liveEvent(s._moDomContainer,{rule:function(){
return r;
},events:function(){
return p;
}});
}
};
this.render=function(p){
if(this._moDomContainer)
this._moDomContainer.innerHTML=p;
};
this.isShow=function(){
if(!this._moDomContainer)
{
return false;
}
return this._moDomContainer.style.display.toLowerCase()!="none";
};
this.show=function(){
this._moDomContainer&&g.show(this._moDomContainer,true);
};
this.hide=function(){
this._moDomContainer&&g.show(this._moDomContainer,false);
};
});
return {create:l._fCreate,use:l._fUse,cmd:l._fCmd,msg:l._fMsg,wsp:l._fWhisper,clear:l._fClear,getModuleClass:l._fgetModuleClass};
})(getTop());
getTop().QMModuleMgr=d;
var b=(function(g,h,o){
var W=getTop(),i={COMBINE_NAME:"_combine_"},V={"voice":0x00000001,"fax":0x00000002,"video":0x00000004,"pager":0x00000010,"bbs":0x00000020,"modem":0x00000040,"car":0x00000080,"pcs":0x00000100,"msg":0x00000200,"home":0x00000400,"work":0x00000800,"cell":0x00001000},F={"home":0x00000001,"work":0x00000002,"internet":0x00000004},E={"home":0x00000001,"work":0x00000002,"dom":0x00000004,"intl":0x00000008,"postal":0x00000010,"parcel":0x00000020},X={"\u4E2A\u4EBA\u90AE\u7BB1":F["internet"]|F["home"],"\u5DE5\u4F5C\u90AE\u7BB1":F["internet"]|F["work"],"\u624B\u673A\u53F7\u7801":V["voice"]|V["cell"],"\u5BB6\u5EAD\u53F7\u7801":V["voice"]|V["home"],"\u5DE5\u4F5C\u53F7\u7801":V["voice"]|V["work"],"\u5BB6\u5EAD\u5730\u5740":E["home"],"\u5DE5\u4F5C\u5730\u5740":E["work"]},K={"oEmail":["\u4E2A\u4EBA\u90AE\u7BB1","\u5DE5\u4F5C\u90AE\u7BB1"],"oTel":["\u624B\u673A\u53F7\u7801","\u5BB6\u5EAD\u53F7\u7801","\u5DE5\u4F5C\u53F7\u7801"],"oAdr":["\u5BB6\u5EAD\u5730\u5740","\u5DE5\u4F5C\u5730\u5740"],"oIM":["QQ","\u5FAE\u4FE1","MSN","Google Talk"],"oUrl":["\u4E3B\u9875","\u5BB6\u5EAD","\u5DE5\u4F5C","\u5176\u4ED6"],"oDate":["\u5468\u5E74\u7EAA\u5FF5","\u5176\u4ED6"],"oRelate":["\u6BCD\u4EB2","\u7236\u4EB2","\u7236\u6BCD","\u5144\u5F1F","\u59D0\u59B9","\u5B50\u5973","\u597D\u53CB","\u914D\u5076","\u5408\u4F5C\u4F19\u4F34","\u52A9\u624B","\u7ECF\u7406","\u5176\u4ED6"]},L={"sId":"","sItemType":"","oGroup":[],"oName":[{sLabel:"",sDefault:"\u59D3\u540D",sVal:""}],"oUrl":[{sLabel:"\u4E3B\u9875",sDefault:"url\u5730\u5740",sVal:""}],"oDate":[{sLabel:"\u5468\u5E74\u7EAA\u5FF5",sDefault:"\u5E74-\u6708-\u65E5",sVal:""}],"oRelate":[{sLabel:"\u6BCD\u4EB2",sDefault:"\u59D3\u540D",sVal:""}],"oBirthday":[{sLabel:"\u751F\u65E5",sDefault:"\u5E74-\u6708-\u65E5",sVal:""}],"oPhoto":[{sVal:""}],"oNote":[{sLabel:"\u5907\u6CE8",sDefault:"\u5907\u6CE8",sVal:""}],"oEmail":[{sLabel:"\u4E2A\u4EBA\u90AE\u7BB1",sDefault:"\u90AE\u7BB1\u5730\u5740",sGroupId:"",sType:"5",sVal:""}],"oTel":[{sLabel:"\u624B\u673A\u53F7\u7801",sDefault:"\u7535\u8BDD\u53F7\u7801",sType:"4097",sVal:""}],"oAdr":[{sLabel:"\u5BB6\u5EAD\u5730\u5740",sDefault:"\u5730\u5740",sType:"1",sCountry:"",sProvince:"",sCity:"",sStreet:"",sPostcode:""}],"oIM":[{sLabel:"QQ",sDefault:"\u5E10\u53F7",sVal:""}],"oOrg":[{sLabel:"\u5DE5\u4F5C",sOrg1:"",sOrg2:"",sTitle:""}],"oCustom":[{sLabel:"\u81EA\u5B9A\u4E49",sDefault:"\u81EA\u5B9A\u4E49\u4FE1\u606F",sVal:""}]},D=-1,I=[],J={},N={},H={},G,O=W.TE(['&GrpID=$groupid$','$@$for($addrs$)$@$','&AddrID=$sId$','$@$endfor$@$']),Q=W.T(["/cgi-bin/laddr_del?sid=$sid$&operate=del&t=contact.json&ef=js"]),U=W.T(["/cgi-bin/laddr_list?sid=$sid$&operate=$operate$&t=contact.json&view=$view$&ef=js&keyword=$keyword$&sorttype=user$sorttype$&groupid=$groupid$"]),T=W.T(["/cgi-bin/laddr_list?sid=$sid$&operate=getlevel&t=contact.json&ef=js"]),R=W.T(["/cgi-bin/laddr_detail?sid=$sid$&ef=js&operate=detail&view=domain&GrpID=$groupid$&AddrID=$addrid$&t=contact.json&ef=js"]),P=W.T(["/cgi-bin/laddr_combine?sid=$sid$&method=manualcombine&t=contact.json&ef=js"]),S=W.T(["/cgi-bin/laddr_addedit?sid=$sid$&operate=save&t=contact.json&ef=js&resp_charset=UTF8"]);
function C()
{
if(D<0)
{
I=goListData.oList;
J={};
for(var A=0;A<I.length;A++)
{
J[I[A].sId]=I[A];
}
G=goGroupData;
D=1;
}
}
;function r(A)
{
if(A&&H[A])
{
J[A].sLevel=H[A];
}
else{
for(var M in H)
{
J[M]&&(J[M].sLevel=H[M]);
}
}
}
;var m=0,l=0;
function z(M,A)
{
var ab=M||{};
if(W["__contact__level__"])
{
H=W["__contact__level__"].oLevels;
r();
A&&A.call(b,W["__contact__level__"].oLevels);
return;
}
W.QMAjax.send(T.replace({sid:W.getSid()}),{method:"GET",onload:function(ac,ad){
if(ac)
{
var ae=g.evalValue(ad);
if(typeof (ae.errcode)=="undefined"&&ae.oLevels)
{
W["__contact__level__"]=ae;
H=ae.oLevels;
r();
A&&A.call(b,ae.oLevels);
return;
}
if(l<20)
{
clearTimeout(m);
m=setTimeout(function(){
z(ab,A);
},1500);
l++;
}
}
}});
}
;function B(M,A)
{
var ab=M||{},ac=ab.sGroupId||"",ae=ab.sViewType||"all",ad=ab.sSortType||"name";
if(ab.sType=="search")
{
if(typeof (ab.sKeyword)=="undefined")
{
A.call(b,g.extend({},ab,N));
return;
}
W.QMAjax.send(U.replace({sid:W.getSid(),operate:"search",view:ae,sorttype:ad,keyword:encodeURIComponent(ab.sKeyword)}),{method:"GET",onload:function(af,ag){
if(af)
{
var ah=g.evalValue(ag);
if(typeof (ah.errcode)=="undefined")
{
if(ae=="all")
{
N=ah;
}
else{
var ai={"normal":"oNormal","other":"oOther","domain":"oDomain","qq":"oQQ"}[ae];
ae&&N[ae]&&g.merge(N[ae],ah[ae]);
}
for(var aj in N)
{
if(aj!="nCnt")
{
for(var ak=0;ak<N[aj].oList.length;ak++)
{
J[N[aj].oList[ak].sId]=N[aj].oList[ak];
r(N[aj].oList[ak].sId);
}
}
}
A.call(b,g.extend({},ab,ah));
return;
}
else if(ah.errcode==-2)
{
alert("sessionTimeout");
return;
}
else if(ah.errcode<0)
{
W.showError(W.trim(ah.errmsg)||"\u641C\u7D22\u5931\u8D25");
A.call(b);
return;
}
}
W.showError("\u641C\u7D22\u5931\u8D25");
A.call(b);
}});
}
else{
W.QMAjax.send(U.replace({sid:W.getSid(),operate:"view",view:ae,groupid:ac,sorttype:ad}),{method:"GET",onload:function(af,ag){
if(af)
{
var ah=g.evalValue(ag);
if(typeof (ah.errcode)=="undefined")
{
I=ah.oList;
for(var ai=0;ai<I.length;ai++)
{
J[I[ai].sId]=I[ai];
}
A.call(b,g.extend({},ab,ah));
return;
}
else if(ah.errcode==-2)
{
alert("sessionTimeout");
return;
}
else if(ah.errcode<0)
{
W.showError(W.trim(ah.errmsg)||"\u5217\u8868\u52A0\u8F7D\u5931\u8D25");
A.call(b);
return;
}
}
W.showError("\u5217\u8868\u52A0\u8F7D\u5931\u8D25");
A.call(b);
}});
}
}
;function w(M,A)
{
var ab=M||{};
W.showInfo("\u6B63\u5728\u5408\u5E76\u8054\u7CFB\u4EBA...");
W.QMAjax.send(P.replace({sid:W.getSid()}),{method:"POST",content:W.TE(['$@$for($oItemList$)$@$','&AddrID=$sId$','$@$endfor$@$']).replace({oItemList:ab.oIds}),onload:function(ac,ad){
W.hiddenMsg();
if(ac)
{
var ae=g.evalValue(ad);
if(typeof (ae.errcode)=="undefined")
{
ae.sId=i.COMBINE_NAME;
J[i.COMBINE_NAME]=g.merge({},L,ae);
A&&A.call(b,{sId:i.COMBINE_NAME});
return;
}
else if(ae.errcode==-2)
{
alert("sessionTimeout");
return;
}
else if(ae.errcode<0)
{
W.showError(W.trim(ae.errmsg)||"\u5408\u5E76\u8054\u7CFB\u4EBA\u5931\u8D25");
A&&A.call(b);
return;
}
return;
}
W.showError("\u7F51\u7EDC\u5F02\u5E38");
A&&A.call(b);
}});
}
;function y(M,A)
{
var ac=M||{},ab=J[ac.sId];
if(ab)
{
A.call(b,g.merge({},L,ab));
}
else{
A.call(b,g.merge({},L));
}
if(ac.bShowDetail&&ab&&ab.sItemType=="domain"&&!ab.oDetail)
{
W.QMAjax.send(R.replace({sid:W.getSid(),groupid:ac.sGroupId,addrid:ab.sId}),{method:"GET",onload:function(ad,ae){
if(ad)
{
var af=g.evalValue(ae);
if(af.oDetail)
{
ab.oDetail=af.oDetail;
A.call(b,g.merge({bIsDomainDetail:true},L,ab));
}
}
}});
}
}
;function x(M,A)
{
var ac=M||{},ab=[];
if(typeof (ac.sId)!="undefined")
{
for(var ae in G)
{
var ad=G[ae].oList;
for(var af=0;af<ad.length;af++)
{
if(ac.sId==ad[af].sId)
{
ab.push(ad[af]);
}
}
ad=o;
}
A.call(b,ab);
return;
}
else if(ac.sType)
{
if(ac.sType=="normal")
{
ab=G["oNormal"].oList;
}
else if(ac.sType=="domain")
{
ab=G["oDomain"].oList;
}
else if(ac.sType=="QQ")
{
ab=G["oQQ"].oList;
}
else if(ac.sType=="all")
{
ab=ab.concat(G["oNormal"],G["oDomain"],G["oQQ"]);
}
A.call(b,ab);
return;
}
A.call(b,G);
}
;function v(M,A)
{
var ab=-1;
for(var ac=0;ac<A.length;ac++)
{
if(M==A[ac].sId)
{
ab=ac;
break;
}
}
return ab;
}
;function s(M,A)
{
for(var ac=0;ac<M.length;ac++)
{
var ab=G["oNormal"].oList;
for(var ad=0;ad<ab.length;ad++)
{
if(M[ac].sId==ab[ad].sId)
{
ab[ad].nCnt--;
break;
}
}
ab=o;
}
for(var ac=0;ac<A.length;ac++)
{
var ab=G["oNormal"].oList;
for(var ad=0;ad<ab.length;ad++)
{
if(A[ac].sId==ab[ad].sId)
{
ab[ad].nCnt++;
break;
}
}
ab=o;
}
}
;function t(A)
{
var M=J[A.sId];
if(M)
{
if(M.sItemType=="other")
{
G["oOther"].nTotalCnt--;
G["oNormal"].nTotalCnt++;
s(M.oGroup,A.oGroup);
}
else if(M.sItemType=="normal")
{
s(M.oGroup,A.oGroup);
}
else{
debug("\u8FD9\u4E0D\u79D1\u5B66");
}
}
else{
I.unshift(A);
G["oNormal"].nTotalCnt++;
for(var ad=0;ad<A.oGroup.length;ad++)
{
var ab=G["oNormal"].oList;
for(var ae=0;ae<ab.length;ae++)
{
if(A.oGroup[ad].sId==ab[ae].sId)
{
ab[ae].nCnt++;
break;
}
}
ab=o;
}
}
u();
J[A.sId]=A;
r(A.sId);
for(var ac in N)
{
if(ac!="nCnt")
{
for(var ad=0;ad<N[ac].oList.length;ad++)
{
if(N[ac].oList[ad].sId==A.sId)
{
N[ac].oList[ad]=J[A.sId];
break;
}
}
}
}
}
;function q(A,M)
{
var ah=M||"list",ab=false,ac=function(ai){
var aj=ai.sItemType;
if(aj=="normal")
{
G["oNormal"].nTotalCnt--;
}
else if(aj=="other")
{
G["oOther"].nTotalCnt--;
}
s(ai.oGroup,[]);
};
var af=J[A];
if(af)
{
ac(af);
var ad=v(A,I);
ad>-1&&I.splice(ad,1);
if(ah=="search")
{
var ag=N[af.sItemType=="normal"?"oNormal":"oOther"],ae=v(A,ag.oList);
if(ae>-1)
{
ag.oList.splice(ae,1);
ag.nCnt--;
N.nCnt--;
h.msg('data:SEARCH_LIST_UPDATE_CNT',N.nCnt,ag.nCnt,af.sItemType);
}
}
delete J[A];
u();
ab=true;
}
return ab;
}
;var n=0;
function u()
{
clearTimeout(n);
n=setTimeout(function(){
var A={};
for(var M=0;M<G["oNormal"].oList.length;M++)
{
A[G["oNormal"].oList[M].sId]=G["oNormal"].oList[M].nCnt;
}
A["0"]=G["oNormal"].nTotalCnt;
A["-110"]=G["oOther"].nTotalCnt;
h.msg("data:GROUP_UPDATE",A);
},500);
}
;var k=0,j=[];
function p(M,A)
{
var ac=M||{},ab=function(ad){
h.msg("data:ITEM_DELETE",ad);
W.QMAjax.send(Q.replace({sid:W.getSid()}),{method:"POST",content:W.TE(['$@$for($oItemList$)$@$','&AddrID=$sId$','$@$endfor$@$']).replace({oItemList:ad}),onload:function(ae,af){
if(ae)
{
var ag=g.evalValue(af);
if(typeof (ag.errcode)=="undefined")
{
W.showInfo("\u5220\u9664\u6210\u529F");
A&&A.call(b,ag);
return;
}
else if(ag.errcode==-2)
{
alert("sessionTimeout");
return;
}
else if(ag.errcode<0)
{
W.showError(W.trim(ag.errmsg)||"\u5220\u9664\u5931\u8D25");
A.call(b);
return;
}
}
W.showError("\u5220\u9664\u5931\u8D25");
A&&A.call(b);
}});
};
if(ac.sId)
{
clearTimeout(k);
q(ac.sId,ac.sType);
j.push(ac);
k=setTimeout(function(){
if(W.getUin()==3513707)
{
h.msg("data:ITEM_DELETE",j);
W.showInfo("\u5220\u9664\u6210\u529F(\u6D4B\u8BD5)");
A&&A.call(b,{});
}
else{
ab(j);
}
j=[];
},500);
}
}
;function Z(M,A)
{
W.QMAjax.send(S.replace({sid:W.getSid()}),{method:"POST",content:Y(M),onload:function(ab,ac){
if(ab)
{
var ad=g.evalValue(ac);
if(typeof (ad.errcode)=="undefined")
{
t(ad);
W.showInfo((!ad.sOriginalType||ad.sOriginalType=="normal")?"\u4FDD\u5B58\u6210\u529F":"\u6DFB\u52A0\u6210\u529F");
h.msg("data:ITEM_UPDATE",ad);
A.call(b,ad);
return;
}
else if(ad.errcode==-2)
{
alert("sessionTimeout");
return;
}
else if(ad.errcode<0)
{
W.showError(W.trim(ad.errmsg)||"\u4FDD\u5B58\u5931\u8D25");
A.call(b);
return;
}
}
W.showError("\u4FDD\u5B58\u5931\u8D25");
A.call(b);
}});
}
;function Y(A)
{
var M=[];
for(var ad in A)
{
if(ad=="id")
{
M.push([ad,(A[ad])].join("="));
}
else{
for(var ae=0;ae<A[ad].length;ae++)
{
var ab=A[ad][ae].sType?[A[ad][ae].sLabel,A[ad][ae].sType].join("/"):A[ad][ae].sLabel,ac=(!ab||ad=="org2"||ad=="title"||ad=="province"||ad=="city"||ad=="street"||ad=="postcode")?A[ad][ae].sVal:[ab,A[ad][ae].sVal].join(":");
M.push([ad,(ac)].join("="));
}
}
}
return M.join("&");
}
function aa(M,A)
{
var ab=A||[];
if(M==0)
{
for(var ac=0;ac<ab.length;ac++)
{
if(ab[ac].sItemType=="other")
{
G["oNormal"].nTotalCnt++;
G["oOther"].nTotalCnt--;
h.msg("data:ITEM_UPDATE",J[ab[ac].sId]);
}
else if(ab[ac].sItemType!="normal")
{
G["oNormal"].nTotalCnt++;
}
u();
}
}
else{
for(var ac=0;ac<ab.length;ac++)
{
if(!g.hasGroup(ab[ac],M))
{
if(J[ab[ac].sId])
{
x({sId:M},function(ad){
var ae=J[ab[ac].sId].oGroup.concat(ad);
s(J[ab[ac].sId].oGroup,ae);
u();
J[ab[ac].sId].oGroup=ae;
h.msg("data:ITEM_UPDATE",J[ab[ac].sId]);
});
}
}
}
}
}
;return {CONST:i,inspect:function(A){
if(A=="search")
{
return {oData:N,oMap:J};
}
return {oList:I,oMap:J};
},vcardref:function(A){
if(A)
{
return X[A]||0;
}
return X;
},menuref:function(A){
if(A)
{
return [].concat(K[A]||[]);
}
return g.extend({},K);
},ref:function(){
return g.extend({},L);
},addGrpupMember:function(ab,M,A){
W.QMAjax.send(g.T("/cgi-bin/laddr_grp_addedit?sid=$sid$&OperType=AddMember&t=contact.json&ef=js").replace({sid:W.getSid()}),{method:"POST",content:O.replace({groupid:ab,addrs:M}),onload:function(ac,ad){
if(ac)
{
var ae=g.evalValue(ad);
if(typeof (ae.errcode)=="undefined")
{
W.showInfo("\u6DFB\u52A0\u6210\u529F");
aa(ab,M);
A.call(b,ae);
return;
}
else if(ae.errcode==-2)
{
alert("sessionTimeout");
return;
}
else if(ae.errcode<0)
{
W.showError(W.trim(ae.errmsg)||"\u4FDD\u5B58\u5931\u8D25");
A.call(b);
return;
}
}
W.showError("\u4FDD\u5B58\u5931\u8D25");
A.call(b);
}});
},del:function(ab,M,A){
switch(ab)
{case "item":
p(M,A);
break;
case "group":
break;
}
},put:function(ab,M,A){
switch(ab)
{case "item":
Z(M,A);
break;
case "combine":
delete M.id;
var ac=M.AddrID||[],ad=[];
for(var ae=0;ae<ac.length;ae++)
{
ad.push({sId:ac[ae].sVal});
}
Z(M,function(af){
if(af)
{
W.E(ad,function(ah){
if(af.sId!=ah.sId)
{
q(ah.sId);
}
});
for(var ag=0;ag<ad.length;++ag)
{
if(ad[ag].sId==af.sId)
{
ad.splice(ag,1);
break;
}
}
h.msg("data:ITEM_DELETE",ad);
z({},function(){
af&&A.call(b,af);
});
}
});
break;
case "group":
break;
}
},get:function(ab,M,A){
C();
switch(ab)
{case "level":
z(M,A);
break;
case "list":
B(M,A);
break;
case "item":
y(M,A);
break;
case "combine":
w(M,A);
break;
case "group":
x(M,A);
break;
}
}};
})(QMContactAdaptor,d);
var c=(function(g,L){
var N=getTop(),M=b,t=g.TE(['<div class="panel_wrapper settingtable">','<div ui-type="info_inner" data-type="$sType$" data-id="$sId$" class="panel_info_inner">','$@$if($sType$=="detail")$@$','$@$for($oPhoto$)$@$','$@$if($sVal$)$@$','<img width="40" height="40" class="avator" src="$sVal$" onerror="this.src=\'//mail.qq.com/zh_CN/htmledition/images/rss/male.gif\'"/>','$@$else$@$','<img width="40" height="40" class="avator" src="//mail.qq.com/zh_CN/htmledition/images/rss/male.gif" />','$@$endif$@$','$@$endfor$@$','$@$for($oName$)$@$','$@$if($sVal$)$@$','<h3>$@$eval getTop().htmlEncode($sVal$)$@$</h3>','$@$else$@$','<h3>(\u65E0\u59D3\u540D)</h3>','$@$endif$@$','$@$endfor$@$','<dl class="detail">','$@$if($oEmail$.length>1||$oEmail$[0]&&$oEmail$[0].sVal)$@$','$@$for($oEmail$)$@$','<dt>','<span class="caption">$sLabel$</span>\uFF1A','</dt>','<dd>','<a class="detail_mail" title="\u7ED9TA\u5199\u4FE1" ck="info_compose" data-name="$@$eval getTop().htmlEncode($_root_.oName$&&$_root_.oName$[0]&&$_root_.oName$[0].sVal || "")$@$">','$@$eval getTop().htmlEncode($sVal$)$@$','</a>','<a ck="info_checkmail" data-id="$_root_.sId$" data-email="$sVal$" data-name="$@$eval getTop().htmlEncode($_root_.oName.0.sVal$)$@$" class="detail_dealings" href="javascript:;">','\u5F80\u6765\u90AE\u4EF6','</a>','</dd>','$@$endfor$@$','$@$endif$@$','$@$if($sLevel$&&$sLevel$!="0")$@$','<dt>','<span class="caption">\u7B49\u7EA7</span>\uFF1A','</dt>','<dd>','$sLevel$\u7EA7<em class="level_image ','$@$if($sLevel$>=16)$@$','level_5','$@$else if($sLevel$>=12)$@$','level_4','$@$else if($sLevel$>=8)$@$','level_3','$@$else if($sLevel$>=4)$@$','level_2','$@$else$@$','level_1','$@$endif$@$','"></em>','</dt>','$@$endif$@$','$@$if($oTel$.length>1||$oTel$[0]&&$oTel$[0].sVal)$@$','$@$for($oTel$)$@$','$@$if($sVal$)$@$','<dt>','<span class="caption">$sLabel$</span>\uFF1A','</dt>','<dd>','$sVal$','</dd>','$@$endif$@$','$@$endfor$@$','$@$endif$@$','$@$if($oAdr$.length>1||','$oAdr$[0]&&($oAdr$[0].sCountry||$oAdr$[0].sProvince||$oAdr$[0].sCity||$oAdr$[0].sStreet||$oAdr$[0].sPostcode))$@$','$@$for($oAdr$)$@$','$@$if($sCountry$||$sProvince$||$sCity$||$sStreet$||$sPostcode$)$@$','<dt>','<span class="caption">$sLabel$</span>\uFF1A','</dt>','<dd>','$@$eval getTop().htmlEncode($sCountry$||"")$@$','$@$eval getTop().htmlEncode($sProvince$||"")$@$','$@$eval getTop().htmlEncode($sCity$||"")$@$','$@$eval getTop().htmlEncode($sStreet$||"")$@$','$@$eval getTop().htmlEncode($sPostcode$||"")$@$','</dd>','$@$endif$@$','$@$endfor$@$','$@$endif$@$','$@$if($oBirthday$.length>1||$oBirthday$[0]&&$oBirthday$[0].sVal)$@$','$@$for($oBirthday$)$@$','$@$if($sVal$)$@$','<dt>','<span class="caption">$sLabel$</span>\uFF1A','</dt>','<dd>','$sVal$','</dd>','$@$endif$@$','$@$endfor$@$','$@$endif$@$','$@$if($oDate$.length>1||$oDate$[0]&&$oDate$[0].sVal)$@$','$@$for($oDate$)$@$','$@$if($sVal$)$@$','<dt>','<span class="caption">$sLabel$</span>\uFF1A','</dt>','<dd>','$sVal$','</dd>','$@$endif$@$','$@$endfor$@$','$@$endif$@$','$@$if($oRelate$.length>1||$oRelate$[0]&&$oRelate$[0].sVal)$@$','$@$for($oRelate$)$@$','$@$if($sVal$)$@$','<dt>','<span class="caption">$sLabel$</span>\uFF1A','</dt>','<dd>','$@$eval getTop().htmlEncode($sVal$||"")$@$','</dd>','$@$endif$@$','$@$endfor$@$','$@$endif$@$','$@$if($oIM$.length>1||$oIM$[0]&&$oIM$[0].sVal)$@$','$@$for($oIM$)$@$','<dt>','<span class="caption">$sLabel$</span>\uFF1A','</dt>','$@$if($sVal$)$@$','<dd>','$@$eval getTop().htmlEncode($sVal$||"")$@$','</dd>','$@$endif$@$','$@$endfor$@$','$@$endif$@$','$@$if($oOrg$.length>1||$oOrg$[0]&&($oOrg$[0].sOrg1||$oOrg$[0].sOrg2||$oOrg$[0].sTitle))$@$','$@$for($oOrg$)$@$','<dt>','<span class="caption">$sLabel$</span>\uFF1A','</dt>','$@$if($sOrg1$||$sOrg2$||$sTitle$)$@$','<dd>','$@$eval getTop().htmlEncode($sOrg1$||"")$@$ ','$@$eval getTop().htmlEncode($sOrg2$||"")$@$ ','$@$eval getTop().htmlEncode($sTitle$||"")$@$ ','</dd>','$@$endif$@$','$@$endfor$@$','$@$endif$@$','$@$if($oUrl$.length>1||$oUrl$[0]&&$oUrl$[0].sVal)$@$','$@$for($oUrl$)$@$','<dt>','<span class="caption">$sLabel$</span>\uFF1A','</dt>','$@$if($sVal$)$@$','<dd>','$@$eval getTop().htmlEncode($sVal$||"")$@$','</dd>','$@$endif$@$','$@$endfor$@$','$@$endif$@$','$@$if($oGroup$.length>0)$@$','<dt>','<span class="caption">\u5206\u7EC4</span>\uFF1A','</dt>','<dd class="detail_groups">','$@$for($oGroup$)$@$','<span class="groups_item">$sName$</span>','$@$endfor$@$','</dt>','$@$endif$@$','$@$if($oCustom$.length>1||$oCustom$[0]&&$oCustom$[0].sVal)$@$','$@$for($oCustom$)$@$','$@$if($sVal$)$@$','<dt>','<span class="caption">$sLabel$</span>\uFF1A','</dt>','<dd>','$@$eval getTop().htmlEncode($sVal$||"")$@$','</dd>','$@$endif$@$','$@$endfor$@$','$@$endif$@$','$@$if($oNote$.length>1||$oNote$[0]&&$oNote$[0].sVal)$@$','$@$for($oNote$)$@$','$@$if($sVal$)$@$','<dt>','<span class="caption">$sLabel$</span>\uFF1A','</dt>','<dd>','$@$eval getTop().htmlEncode($sVal$||"").replace(/[\\r\\n]+/g,"<br>")$@$','</dd>','$@$endif$@$','$@$endfor$@$','$@$endif$@$','$@$if($oDetail$&&$oDetail$.length>0)$@$','<dt>','<span class="caption">\u7EC4\u5185\u6210\u5458</span>\uFF1A','</dt>','<dd class="detail_members">','<table>','$@$for($oDetail$)$@$','<tr$@$if($_idx_$%2)$@$ class="tr_dark" $@$endif$@$>','<td class="td_name">$sName$</td>','<td class="td_email">$sEmail$</td>','</tr>','$@$endfor$@$','</table>','</dd>','$@$endif$@$','</dl>','$@$if(0&&$sViewType$=="normal")$@$','<div class="detail_operation">','<a ck="info_edit" class="detail_edit" data-id="$sId$"><em class="ico_edit"></em>\u7F16\u8F91\u8054\u7CFB\u4EBA</a>','<a ck="info_del" class="detail_delete" data-id="$sId$"><em class="ico_delete"></em>\u5220\u9664</a>','</div>','$@$endif$@$','$@$else if($sType$=="list")$@$','<div id="info_summary" class="summary">','$sViewGroupName$$@$if($nCnt$>-1)$@$\uFF08$nCnt$\uFF09$@$endif$@$','</div>','<div id="info_chosen" class="summary" style="display:none">','\u5DF2\u9009\u62E9<span>0</span>\u4E2A\u8054\u7CFB\u4EBA','</div>','$@$else if($sType$=="search")$@$','<div id="info_summary" class="summary">','$@$if($nCnt$>-1)$@$\u641C\u7D22\u7ED3\u679C\uFF08$nCnt$\uFF09$@$else$@$\u2026\u2026&nbsp;$@$endif$@$','</div>','<div id="info_chosen" class="summary" style="display:none">','\u5DF2\u9009\u62E9<span>0</span>\u4E2A\u8054\u7CFB\u4EBA','</div>','$@$endif$@$','</div>','</div>']),D=g.TE(['$@$if($sType$=="list")$@$','<div class="nav_list toolbg toolbgline toolheight">','<div class="search">','<form>','<input kd="nav_keyword" name="keyword" id="keyword" autocomplete="off" class="txt_search" type="text" default="\u641C\u7D22\u5168\u90E8\u8054\u7CFB\u4EBA" onfocus="if(this.placeholder == \'\u641C\u7D22\u5168\u90E8\u8054\u7CFB\u4EBA\'){  this.placeholder = \'\';}this.parentNode.className=\'focus_search\';" onblur="if(this.value == \'\'){this.placeholder = \'\u641C\u7D22\u5168\u90E8\u8054\u7CFB\u4EBA\';}this.parentNode.className=\'\';"/>','<a ck="nav_search" href="javascript:;" class="btn_search btn_gray" title="\u641C\u7D22"><em class="ico_search"></em></a>','</form>','</div>','<div class="tool">','<a href="javascript:;" ck="nav_create" class="btn_add btn_blue btn_space" title="\u6DFB\u52A0\u8054\u7CFB\u4EBA"><em class="ico_add"></em></a>','<a href="javascript:;" ck="nav_sync" class="btn_mobile btn_gray btn_space" title="\u5728\u624B\u673A\u4E2D\u540C\u6B65\u8054\u7CFB\u4EBA"><em class="ico_mobile"></em></a>','<a href="javascript:;" ck="nav_tool" class="btn_gray btn_tool">\u5DE5\u5177<em class="ico_dropdowm"></em></a>','</div>','</div>','<div class="nav_mask"></div>','$@$else if($sType$=="multi")$@$','<div class="nav_list toolbg toolbgline toolheight">','<a ck="nav_compose" href="javascript:;" class="btn_gray btn_space" value="">\u5199\u4FE1</a>','$@$if($sViewType$=="normal"||$sViewType$=="other"||$bIsSearch$)$@$','<a ck="nav_del" href="javascript:;" class="btn_gray btn_space">\u5220\u9664</a>','$@$endif$@$','$@$if($sViewType$=="normal"&&!$bIsSearch$)$@$','<a ck="nav_group" class="btn_gray btn_space" href="javascript:;">','\u6DFB\u52A0\u5230\u7EC4...<em class="ico_dropdowm"></em>','</a>','$@$else$@$','<a ck="nav_contact" class="btn_gray btn_space" href="javascript:;">\u6DFB\u52A0\u5230\u901A\u8BAF\u5F55</a>','$@$endif$@$','$@$if($sViewType$=="normal"||$bIsSearch$)$@$','$@$if($nSelectCnt$>1)$@$','<a ck="nav_combine" href="javascript:;" class="btn_gray btn_space">\u5408\u5E76</a>','$@$else$@$','<a href="javascript:;" class="btn_gray btn_space btn_disabled">\u5408\u5E76</a>','$@$endif$@$','$@$endif$@$','<a href="javascript:;" ck="nav_unselect" class="btn_blue btn_cancel" value="" title="\u53D6\u6D88\u9009\u4E2D"><em class="ico_cancel"></em></a>','</div>','<div class="nav_mask"></div>','$@$else if($sType$=="preview")$@$','<div class="nav_edit toolbg toolbgline toolheight">','<a ck="nav_pre_back" data-otherchange="$@$eval $bIsChanged$?1:0$@$" class="btn_gray btn_space btn_back left" hidefocus href="javascript:;">','<span style="font-family:Verdana;">&#171;</span>&nbsp;','\u8FD4\u56DE','</a>','<input type="button" class="btn_sepline"/>','<a ck="nav_pre_compose" data-id="$sId$" data-mailcnt="$nMailCnt$" class="btn_gray btn_space" hidefocus href="javascript:;">\u5199\u4FE1','$@$if($nMailCnt$>1)$@$','<em class="ico_dropdowm"></em>','$@$endif$@$','</a>','$@$if($sItemType$=="normal")$@$','<a ck="nav_pre_edit" data-id="$sId$" class="btn_gray btn_space" hidefocus href="javascript:;">\u7F16\u8F91</a>','$@$else if($sItemType$=="other")$@$','<a ck="nav_pre_edit" data-id="$sId$" class="btn_gray btn_space" hidefocus href="javascript:;">\u6DFB\u52A0\u5230\u901A\u8BAF\u5F55</a>','$@$else$@$','<a ck="nav_pre_store" data-id="$sId$" class="btn_gray btn_space" hidefocus href="javascript:;">\u6DFB\u52A0\u5230\u901A\u8BAF\u5F55</a>','$@$endif$@$','$@$if($sItemType$!="domain"&&$sItemType$!="qq")$@$','<a ck="nav_pre_del" data-id="$sId$" data-otherchange="$@$eval $bIsChanged$?1:0$@$" ','class="btn_gray btn_space" hidefocus href="javascript:;">\u5220\u9664</a>','$@$endif$@$','</div>','$@$else if($sType$=="detail")$@$','<div class="nav_edit toolbg toolbgline toolheight">','<a href="javascript:;" ck="nav_save" class="btn_blue btn_space" ui-type="save" data-id="$sId$" data-type="$sType$">\u4FDD\u5B58</a>','$@$if($nEditType$!=2)$@$','<a href="javascript:;" ck="nav_cancel" class="btn_gray" data-id="$sId$" data-type="$sType$">\u53D6\u6D88</a>','$@$endif$@$','</div>','$@$else$@$','sType is needed!!','$@$endif$@$']),k=g.TE(['<div ui-type="nav"></div>']),y=g.TE(['<li data-id="$sId$" data-type="$sItemType$" data-viewtype="$sViewType$" mor="list_mor" mot="list_mot" ',' ck="list_edit" ',' ui-type="column" class="list_item">','<label class="list_select" ck="list_fake_check" for="cb_$_root_.sType$_$sId$"><input id="cb_$_root_.sType$_$sId$" ck="list_check" type="checkbox" ui-type="checkbox" class="cb" value="$sId$" /></label>','<span class="name tf">','$@$if($oQQNickName$)$@$','$@$for($oName$)$@$','$@$if($sVal$)$@$','$@$eval getTop().htmlEncode($sVal$)$@$','$@$else$@$','(\u65E0\u59D3\u540D)','$@$endif$@$','$@$endfor$@$','(','$@$for($oQQNickName$)$@$','$@$if($sVal$)$@$','$@$eval getTop().htmlEncode($sVal$)$@$','$@$else$@$','(\u65E0\u59D3\u540D)','$@$endif$@$',')','$@$endfor$@$','$@$else$@$','$@$for($oName$)$@$','$@$if($sVal$)$@$','$@$eval getTop().htmlEncode($sVal$)$@$','$@$else$@$','(\u65E0\u59D3\u540D)','$@$endif$@$','$@$endfor$@$','$@$endif$@$','</span>','<span class="email tf" >','$@$for($oEmail$)$@$','$@$if($_idx_$==0)$@$','$sVal$','$@$endif$@$','$@$endfor$@$','$@$if($oEmail$&&$oEmail$.length>1)$@$','&nbsp;($@$eval $oEmail.length$$@$)','$@$endif$@$','</span>','$@$if($sItemType$!="domain"&&$sItemType$!="qq")$@$','<span class="mobile tf">','$@$for($oTel$)$@$','$@$if($_idx_$==0)$@$','$sVal$','$@$endif$@$','$@$endfor$@$','</span>','$@$endif$@$','$@$if($_root_.sType$=="search"||$sItemType$=="normal"&&!$_root_.sGroupId$)$@$','<span class="groups tf">','$@$for($oGroup$)$@$','$@$if($sName$)$@$','<span class="groups_item">','$@$eval getTop().htmlEncode($sName$)$@$','</span>','$@$endif$@$','$@$endfor$@$','</span>','$@$endif$@$','</li>']),w=g.TE(['$@$if($bIsSearch$)$@$','<li ui-type="column-empty" class="empty">','\u6CA1\u6709\u641C\u5230\u8054\u7CFB\u4EBA\u4FE1\u606F','</li>','$@$else if($sGroupId$)$@$','<li ui-type="column-empty" class="empty">','\u8BE5\u7EC4\u6682\u65E0\u8054\u7CFB\u4EBA\uFF0C<a ck="list_create" data-groupid="$sGroupId$">\u6DFB\u52A0\u4E00\u4E2A\u5427</a>','</li>','$@$else$@$','<li ui-type="column-empty" class="empty">','\u4F60\u8FD8\u6CA1\u6709\u8054\u7CFB\u4EBA\u4FE1\u606F\uFF0C<a ck="list_create">\u6DFB\u52A0\u4E00\u4E2A\u5427</a>','</li>','$@$endif$@$']),z=g.TE(['<li ui-type="column-header" class="column_header">','<label class="list_select" ck="list_fake_check" for="cb_all">','<input id="cb_all" ck="list_select_all" data-type="$sViewType$" type="checkbox" ui-type="checkall" class="cb" value="" />','</label>','<span class="name tf">','<span ck="list_sort" data-sorttype="name" data-type="$sViewType$" class="$@$if($sSortType$&&$sSortType$!="name")$@$ pointer $@$endif$@$">','\u59D3\u540D','<span class="ico_sort_down">\u2193</span>','</span>','</span>','<span class="email tf">','<span ck="list_sort" data-sorttype="mail" data-type="$sViewType$" class="$@$if($sSortType$!="mail")$@$ pointer $@$endif$@$">','\u90AE\u7BB1','<span class="ico_sort_down">\u2193</span>','</span>','</span>','$@$if($sViewType$!="domain"&&$sViewType$!="qq")$@$','<span class="mobile tf">','<span ck="list_sort" data-sorttype="tel" data-type="$sViewType$" class="$@$if($sSortType$!="tel")$@$ pointer $@$endif$@$">','\u7535\u8BDD','<span class="ico_sort_down">\u2193</span>','</span>','</span>','$@$endif$@$','$@$if($sType$=="search"||$sViewType$=="normal"&&!$sGroupId$)$@$','<span class="groups tf">','<span ck="list_sort" data-sorttype="group" data-type="$sViewType$" class="$@$if($sSortType$!="group")$@$ pointer $@$endif$@$">','\u5206\u7EC4','<span class="ico_sort_down">\u2193</span>','</span>','</span>','$@$endif$@$','</li>']),x=g.TE(['$@$if($sType$=="search")$@$','<h2 class="title_search">','$@$if($bLoading$)$@$','\u6B63\u5728\u67E5\u627E...','$@$else if($nCnt$ > 0)$@$','<span>\u67E5\u627E\u5230\u5305\u542B\u201C<span class="green">$@$eval getTop().htmlEncode($sKeyword$)$@$</span>\u201D\u7684\u7ED3\u679C $nCnt$ \u4E2A</span>','$@$else$@$','<span class="bold">\u6CA1\u6709\u67E5\u5230\u7B26\u5408\u6761\u4EF6\u7684\u8054\u7CFB\u4EBA</span>','$@$endif$@$','&nbsp;&nbsp;|&nbsp;&nbsp;','<a ck="search_back" href="javascript:;">\u8FD4\u56DE\u901A\u8BAF\u5F55\u5217\u8868</a>','</h2>','$@$else$@$','<h2>','$@$if(($sViewType$=="normal"||$sViewType$=="other")&&$sGroupId$)$@$','<a ck="list_edit_group" data-groupid="$sGroupId$" href="javascript:;" class="group_edit">','<em class="ico_edit"></em>\u7BA1\u7406\u7EC4','</a>','$@$endif$@$','$sViewGroupName$','</h2>','$@$endif$@$']),v=g.TE(['<div ui-type="list_header">',x,'</div>','<ul ui-type="list">','$@$if($bLoading$)$@$','<li ui-type="column-loading" class="loading">','</li>','$@$else if($oList.length$ == 0)$@$','$@$else$@$','$@$if($sType$=="search")$@$','$@$if($oNormal.nCnt$)$@$','<li ui-type="column-title-normal" t class="title">','<h2>\u901A\u8BAF\u5F55<span class="normal f_size">($oNormal.nCnt$)</span></h2>','</li>','<div ui-type="innerlist">',z.replace({sType:"search",sViewType:"normal"}),'$@$for($oNormal.oList$)$@$',y,'$@$endfor$@$','</div>','$@$endif$@$','$@$if($oOther.nCnt$)$@$','<li ui-type="column-title-other" class="title">','<h2>\u5386\u53F2\u8054\u7CFB\u4EBA<span class="normal f_size">($oOther.nCnt$)</span></h2>','</li>','<div ui-type="innerlist">',z.replace({sType:"search",sViewType:"other"}),'$@$for($oOther.oList$)$@$',y,'$@$endfor$@$','</div>','$@$endif$@$','$@$if($oDomain.nCnt$)$@$','<li ui-type="column-title-domain" class="title">','<h2>\u57DF\u540D\u90AE\u7BB1<span class="normal f_size">($oDomain.nCnt$)</span></h2>','</li>','<div ui-type="innerlist">',z.replace({sType:"search",sViewType:"domain"}),'$@$for($oDomain.oList$)$@$',y,'$@$endfor$@$','</div>','$@$endif$@$','$@$if($oQQ.nCnt$)$@$','<li ui-type="column-title-qq" class="title">','<h2>QQ\u597D\u53CB<span class="normal f_size">($oQQ.nCnt$)</span></h2>','</li>','<div ui-type="innerlist">',z.replace({sType:"search",sViewType:"qq"}),'$@$for($oQQ.oList$)$@$',y,'$@$endfor$@$','</div>','$@$endif$@$','$@$else$@$','<div ui-type="innerlist">',z,'$@$for($oList$)$@$',y,'$@$endfor$@$','</div>','$@$endif$@$','$@$endif$@$','</ul>','$@$if(!$bLoading$)$@$','$@$endif$@$']),u=g.TE([z,'$@$if($sType$=="search")$@$','$@$if($sViewType$=="normal")$@$','$@$for($oNormal.oList$)$@$',y,'$@$endfor$@$','$@$else if($sViewType$=="other")$@$','$@$for($oOther.oList$)$@$',y,'$@$endfor$@$','$@$else if($sViewType$=="domain")$@$','$@$for($oDomain.oList$)$@$',y,'$@$endfor$@$','$@$else if($sViewType$=="qq")$@$','$@$for($oQQ.oList$)$@$',y,'$@$endfor$@$','$@$endif$@$','$@$else$@$','$@$if($oList.length$ == 0)$@$',w,'$@$else$@$','$@$for($oList$)$@$',y,'$@$endfor$@$','$@$endif$@$','$@$endif$@$']),C=g.TE(['#@#if(#bLocal#)#@#','$@$if($_root_.sId$&&$sVal$||$bAdded$)$@$','#@#endif#@#','<li ui-type="column" token="#token#">','<label ck="addr_editlabel" class="caption tf"','#@#if(#nEditType#==0)#@#',' ui-type="edit" ','#@#else#@#',' ui-type="editmenu"  data-menu="#@#eval #oMenus#.join()#@#" ','#@#endif#@#','>','#@#if(#nEditType#==0)#@#','<span>$sLabel$</span>','#@#else#@#','<span>$sLabel$</span><em class="ico_select_s"></em>','#@#endif#@#','</label>','<div class="column_value">','<input type="text" class="txt" ui-type="input"  tabindex="1" ','#@#if(#token#=="oTel"||#token#=="oEmail"||#token#=="oUrl")#@#',' data-type="$sType$" ','#@#endif#@#','#@#if(#token#=="oIM")#@#',' data-formatted="1" ','#@#endif#@#','#@#if(#token#=="oDate")#@#',' onfocus="QMContact.msg(\'msg:COM_CALENDAR\', {oDom:this,sFormat:\'YYYY-MM-DD\',sVal:this.value});"',' onblur="QMContact.msg(\'msg:COM_CALENDAR_HIDE\')" ','#@#endif#@#',' name="#token#" default="$sDefault$" value="$@$eval getTop().htmlEncode($sVal$)$@$">','$@$if($bAdded$||$_idx_$!=0)$@$','<a ck="addr_remove" class="column_action" href="javascript:;" hidefocus><em class="ico_column_remove pointer"></em></a>','$@$else$@$','<a ck="addr_add" class="column_action" href="javascript:;" hidefocus><em class="ico_column_add pointer"></em></a>','$@$endif$@$','</div>','</li>','#@#if(#bLocal#)#@#','$@$endif$@$','#@#endif#@#'],"#"),B=g.TE(['$@$if($bAdded$)$@$',C,'$@$else$@$','$@$for($#token#$)$@$',C,'$@$endfor$@$','$@$endif$@$'],"#"),K=g.TE(['<li ui-type="column" class="column_first">','<span class="caption tf">','$@$for($oPhoto$)$@$','$@$if($sVal$)$@$','<a href="javascript:;" class="avator">','<img ui-type="avator" data-id="$sId$" data-empty="0" class="" width="40" height="40" ',' src="$sVal$" ck="addr_faceUpload" />','</a>','$@$else$@$','<a href="javascript:;" class="avator">','<img ui-type="avator" data-id="$sId$" data-empty="1" class="" width="40" height="40" ',' src="//mail.qq.com/zh_CN/htmledition/images/rss/male.gif" ck="addr_faceUpload" />','</a>','$@$endif$@$','$@$endfor$@$','</span>','<div class="column_value">','<span class="name_combined">','$@$for($oName$)$@$','<input ui-type="input"  tabindex="1" type="text" name="oName" ',' default="$sDefault$" value="$@$eval getTop().htmlEncode($sVal$)$@$" class="txt_name txt" />','$@$endfor$@$','<a class="column_action" href="javascript:;" ck="name_split"><em class="ico_name_seperate"></em></a>','</span>','<span class="name_seperated">','<input ui-type="input"  tabindex="1" type="text" name="oFamilyName" default="\u59D3\u6C0F" value="" class="txt_name txt_name_first txt" />','<input ui-type="input"  tabindex="1" type="text" name="oGivenName" default="\u540D\u5B57" value="" class="txt_name txt_name_last txt" />','<a class="column_action" href="javascript:;" ck="split_close"><em class="ico_name_combine"></em></a>','</span>','</div>','<input ui-type="input"  type="hidden" name="sId" value="$sId$" /> ','<input ui-type="input"  type="hidden" name="sItemType" value="$sItemType$" /> ','$@$if($oIds$&&$oIds$.length)$@$','<input ui-type="input"  type="hidden" name="sMethod" value="manualcombine" /> ','$@$endif$@$','$@$for($oIds$)$@$','<input ui-type="input" data-formatted="1"  type="hidden" name="sAddrID" value="$sId$" /> ','$@$endfor$@$','</li>']),l=g.TE(['$@$for($oBirthday$)$@$','<li ui-type="column" class="column_birthday">','<label ck="addr_editlabel" ui-type="edit" class="caption tf"><span>$sLabel$</span></label>','<div class="column_value">','<input type="text" class="txt" ui-type="input"  tabindex="1" ',' name="oBirthday" ',' onfocus="QMContact.msg(\'msg:COM_CALENDAR\', {oDom:this,sFormat:\'YYYY-MM-DD\',sVal:this.value});" ',' onblur="QMContact.msg(\'msg:COM_CALENDAR_HIDE\')" ',' default="$sDefault$" value="$sVal$" />','</div>','</li>','$@$endfor$@$']),G=g.TE(['<li ui-type="column" token="oOrg" class="column_job">','<label ck="addr_editlabel"  class="caption tf" ui-type="edit"><span>$sLabel$</span></label>','<div class="column_value">','<input type="text" class="job_company txt" ui-type="input"  tabindex="1" name="oOrg" default="\u516C\u53F8" value="$@$eval getTop().htmlEncode($sOrg1$)$@$" />','<input type="text" class="job_department txt" ui-type="input"  tabindex="1" name="sOrg2" default="\u90E8\u95E8" value="$@$eval getTop().htmlEncode($sOrg2$)$@$" />','<input type="text" class="job_position txt" ui-type="input"  tabindex="1" name="sTitle" default="\u804C\u4F4D" value="$@$eval getTop().htmlEncode($sTitle$)$@$" />','$@$if($bAdded$||$_idx_$!=0)$@$','<a ck="addr_remove" class="column_action" href="javascript:;" hidefocus><em class="ico_column_remove pointer"></em></a>','$@$else$@$','<a ck="addr_add" class="column_action" href="javascript:;" hidefocus><em class="ico_column_add pointer"></em></a>','$@$endif$@$','</div>','</li>']),F=g.TE(['$@$if($bAdded$)$@$',G,'$@$else$@$','$@$for($oOrg$)$@$',G,'$@$endfor$@$','$@$endif$@$']),j=g.TE(['<li ui-type="column" token="oAdr" class="column_adr">','<label ck="addr_editlabel"  class="caption tf" ui-type="editmenu"  data-menu="'+M.menuref("oAdr").join()+'">','<span>$sLabel$</span><em class="ico_select_s"></em>','</label>','<div class="column_value">','<input type="text" class="addr_country txt" ui-type="input"  tabindex="1" name="sCountry" default="\u56FD\u5BB6" data-type="$sType$" value="$@$eval getTop().htmlEncode($sCountry$)$@$" />','<input type="text" class="addr_province txt" ui-type="input"  tabindex="1" name="sProvince" default="\u7701\u4EFD" value="$@$eval getTop().htmlEncode($sProvince$)$@$" />','<input type="text" class="addr_city txt" ui-type="input"  tabindex="1" name="sCity" default="\u57CE\u5E02" value="$@$eval getTop().htmlEncode($sCity$)$@$" />','$@$if($bAdded$||$_idx_$!=0)$@$','<a ck="addr_remove" class="column_action" href="javascript:;" hidefocus><em class="ico_column_remove pointer"></em></a>','$@$else$@$','<a ck="addr_add" class="column_action" href="javascript:;" hidefocus><em class="ico_column_add pointer"></em></a>','$@$endif$@$','</div>','<div class="column_value" style="padding-top:6px;">','<input type="text" class="addr_street txt" ui-type="input"  tabindex="1" name="sStreet" default="\u8857\u9053" value="$@$eval getTop().htmlEncode($sStreet$)$@$" />','<input type="text" class="addr_postcode txt" ui-type="input"  tabindex="1" name="sPostcode" default="\u90AE\u653F\u7F16\u7801" value="$@$eval getTop().htmlEncode($sPostcode$)$@$" />','</div>','</li>']),i=g.TE(['$@$if($bAdded$)$@$',j,'$@$else$@$','$@$for($oAdr$)$@$',j,'$@$endfor$@$','$@$endif$@$']),h=g.TE(['<span class="group_item">','$sName$','<a ui-type="addr_group" ck="addr_group_bind" data-id="$sId$" data-bind="$@$eval typeof($nIdx$)!="undefined"?$nIdx$:-1$@$" class="group_check group_delete" href="javascript:;" title="\u7ED1\u5B9A\u90AE\u7BB1">','<em class="ico_dropdowm"></em>','</a>','<a ui-type="addr_group" ck="addr_group_del" class="group_remove group_delete" href="javascript:;" title="\u5220\u9664\u5206\u7EC4">','<em class="ico_delete_dark"></em>','</a>','</span>']),r=g.TE(['<li ui-type="column" ui-subtype="group" class="column_groups">','<label  class="caption tf" style="cursor:default;">\u5206\u7EC4</label>','<div class="column_value">','$@$for($oGroup$)$@$',h,'$@$endfor$@$','<a ck="addr_group_add" class="group_item group_add" href="javascript:;" title="\u9009\u62E9\u5206\u7EC4">','<em class="ico_column_add"></em>','</a>','</div>','</li>']),E=g.T(['$@$for($oNote$)$@$','<li ui-type="column">','<label ck="addr_editlabel" class="caption tf" ui-type="edit"><span>$sLabel$</span></label>','<div class="column_value">','<textarea class="txt_more txt" ui-type="input"  tabindex="1" name="oNote" default="$sDefault$">$@$eval getTop().htmlEncode($sVal$)$@$</textarea>','</div>','</li>','$@$endfor$@$']),q=g.TE([B.replace({token:"oEmail",nEditType:1,oMenus:M.menuref("oEmail")})]),I=g.TE([B.replace({token:"oTel",nEditType:1,oMenus:M.menuref("oTel")})]),s=g.TE([B.replace({token:"oIM",nEditType:1,oMenus:M.menuref("oIM")})]),o=g.TE([B.replace({token:"oDate",nEditType:1,oMenus:M.menuref("oDate"),bLocal:true})]),H=g.TE([B.replace({token:"oRelate",nEditType:1,oMenus:M.menuref("oRelate"),bLocal:true})]),J=g.TE([B.replace({token:"oUrl",nEditType:1,oMenus:M.menuref("oUrl"),bLocal:true})]),n=g.TE([B.replace({token:"oCustom",nEditType:0})]),p=g.TE(['<div class="panel_wrapper settingtable">','<div class="panel_edit_inner">','<ul>',K,q,I,i,l,o,H,s,F,J,r,n,E,'</ul>','</div>','</div>']),m=g.TE(['<div id="qmcontact_cal" class="plugin_cal" tabindex="-1">','<table cellspaceing="0" cellpadding="0">','<tr>','<td title="\u4E0A\u5E74" opt="slide" data-range="-12">&lt;&lt;</td>','<td title="\u4E0A\u6708" opt="slide" data-range="-1">&lt;</td>','<td colspan="3">$nYear$ - $nMonth$</td>','<td title="\u4E0B\u6708" opt="slide" data-range="1">&gt;</td>','<td title="\u4E0B\u5E74" opt="slide" data-range="12">&gt;&gt;</td>','</tr>','<tr>','<th>\u65E5</th>','<th>\u4E00</th>','<th>\u4E8C</th>','<th>\u4E09</th>','<th>\u56DB</th>','<th>\u4E94</th>','<th>\u516D</th>','</tr>','$@$for($oWeeks$)$@$','<tr>','$@$for($_this_$)$@$','$@$if($nYear$&&$nSolarDay$)$@$','<td data-year="$nSolarYear$" data-month="$nSolarMonth$" data-day="$nSolarDay$" ','class=" ','$@$if($nSolarMonth$!=$_root_.nMonth$)$@$',' day_minor ','$@$endif$@$','$@$if($nSolarMonth$==$_root_.nSelMonth$&&$nSolarDay$==$_root_.nSelDate$&&$nSolarYear$==$_root_.nSelYear$)$@$',' day_selected fn_list ','$@$else if($nSolarMonth$==$_root_.nCurrMonth$&&$nSolarDay$==$_root_.nCurrDate$&&$nSolarYear$==$_root_.nCurrYear$)$@$',' day_today ','$@$endif$@$',' " ',' opt="choose">$nSolarDay$</td>','$@$endif$@$','$@$endfor$@$','</tr>','$@$endfor$@$','</table>','</div>']);
return {init:function(){
},tmpl:function(P,A,O){
var Q=A||{},R={"add":{"oEmail":q,"oTel":I,"oAdr":i,"oIM":s,"oOrg":F,"oUrl":J,"oDate":o,"oRelate":H,"oCustom":n}[Q.sToken],"calendar":m,"info":t,"detail":p,"detail_group_bind":h,"list":v,"list_header":x,"list_inner":u,"list_item":y,"list_empty":w,"nav":D,"bar":k}[P];
if(typeof (A)=="undefined")
{
return R;
}
else{
if(P=="add")
{
Q=g.extend({bAdded:true},Q);
}
return R.replace(Q,O);
}
}};
})(QMContactAdaptor);
(function(g,h){
d.create("Contact.AddEdit",function(j,i){
var k=this;
this.init_=function(l){
j.init_.call(this,l);
this._moDomContainer=l.oContainer;
this._moParam=l.oParam;
};
this.initEvent_=function(){
var l=g.finds('li[ui-type="column"] [ui-type="input"]',this._moDomContainer),n=this,m={input:function(){
n._detectValue();
n._checkGroup();
},propertychange:function(){
m.input();
}};
for(var o=0;o<l.length;o++)
{
if(l[o].name=="sId")
{
continue;
}
g.binds(l[o],m);
}
};
this.action_=function(l){
j.action_.call(this);
var p=this,o=l||{},r=o.sId||"",n=o.oIds||[],s=o.sType||"",q=o.sGroupId||"",m=o.oGroupList||[];
this._msType=s;
this._msId=r;
i.msg("msg:ADDEDIT_SHOW",{sId:r});
g.bodyScroll(window,"scrollTop",0);
q&&this.data.get("group",{sId:q},function(t){
m=t;
});
this.data.get("item",{sType:s,sId:r},function(t){
var B=p._moParam.sUserName||"",y=p._moParam.sQQNickName||"",A=p._moParam.sUserMail||"",z=p._moParam.sUserIcon||"",w,v,u,x=((B||A)&&!p._moParam.bEditExist)?{oName:[{sVal:B}],oEmail:[{sVal:A}]}:{};
if(z)
{
g.extend(x,{oPhoto:[{sVal:z}]});
}
if(y)
{
g.extend(x,{oCustom:[{sLabel:"QQ\u6635\u79F0",sVal:y}]});
}
k._msFamilyName=t.oFamilyName?t.oFamilyName[0].sVal:"";
k._msGivenName=t.oGivenName?t.oGivenName[0].sVal:"";
k._msName=t.oName[0].sVal;
(o.sAction=="add"||n.length)&&g.merge(x,{oGroup:m,oIds:n});
(t.sItemType=="domain"||t.sItemType=="qq")&&g.merge(x,{sId:"",oGroup:[]});
p.render(p.view.tmpl("detail",p._bindMailToGroup(g.merge({},t,x))));
w=g.finds('input[name="oName"]',p._moDomContainer)[0];
v=g.finds('input[name="oGivenName"]',p._moDomContainer)[0];
u=g.finds('input[name="oFamilyName"]',p._moDomContainer)[0];
g.placeholder(g.finds('li[ui-type="column"] [ui-type="input"]',p._moDomContainer));
g.editlabel(g.finds('li[ui-type="column"] label',p._moDomContainer));
p._checkGroup();
p._detectValue();
v.onchange=u.onchange=function(){
w.value=u.value+v.value;
};
setTimeout(function(){
g.finds('input[name="oName"]',p._moDomContainer)[0].focus();
g.finds('input[name="oName"]',p._moDomContainer)[0].select();
});
p.initEvent_();
});
};
this.destory_=function(){
j.destory_.call(this);
this._moParam=this._moDomContainer=h;
};
this.register({click:{"addr_add":{bPropagable:false,fHandle:function(l,m){
var n=g.parents('li[ui-type="column"]',m)[0],p=n.getAttribute("token"),o=g.finds('li[token="'+p+'"]',this._moDomContainer);
n=o[o.length-1];
g.insertHTML(n,"afterEnd",this.view.tmpl("add",g.extend({sToken:p},this.data.ref()[p][0])));
g.placeholder(g.finds('[ui-type="input"]',n.nextSibling));
g.editlabel(g.finds('label',n.nextSibling));
g.finds('[ui-type="input"]',n.nextSibling)[0].focus();
p=="oEmail"&&this._checkGroup();
}},"addr_remove":{bPropagable:false,fHandle:function(l,m){
var n=g.parents('li[ui-type="column"]',m)[0],o=n.getAttribute("token");
g.removeSelf(g.parents('[ui-type="column"]',m)[0]);
o=="oEmail"&&this._checkGroup();
}},"name_split":{bPropagable:false,fHandle:function(l,m){
var q=g.parents('[ui-type="column"]',m)[0];
var o=g.finds('span.name_combined',this._moDomContainer)[0];
var p=g.finds('input[ui-type="input"]',o)[0];
var s=g.finds('span.name_seperated',this._moDomContainer)[0];
var r=g.finds('input[name="oGivenName"]',s)[0];
var n=g.finds('input[name="oFamilyName"]',s)[0];
var t=p&&(g.hasClass(p,"placeholder")?"":p.value);
if(t!=k._msName)
{
g.QMAjax.send(g.T("/cgi-bin/laddr_addedit?sid=$sid$&action=splitname&name=$fullname$&t=addr_addedit").replace({sid:g.getSid(),fullname:g.encodeURI(t)||""}),{method:"post",onload:function(u,v){
if(u)
{
var w=g.evalValue(v),x=w&&w.familyname,y=w&&w.givenname;
r&&g.removePlaceholder(r);
n&&g.removePlaceholder(n);
(r)&&(r.value=y);
(n)&&(n.value=x);
g.addClass(q,"column_seperated");
k._msName=t;
k._msFamilyName=x;
k._msGivenName=y;
setTimeout(function(){
r.focus();
n.focus();
});
}
}});
}
else{
r&&g.removePlaceholder(r);
n&&g.removePlaceholder(n);
g.addClass(q,"column_seperated");
r.value=k._msGivenName;
n.value=k._msFamilyName;
setTimeout(function(){
r.focus();
n.focus();
});
}
}},"split_close":{bPropagable:false,fHandle:function(l,m){
var q=g.parents('[ui-type="column"]',m)[0],o=g.finds('input[name="oName"]',q)[0],n=g.finds('input[name="oFamilyName"]',q)[0],p=g.finds('input[name="oGivenName"]',q)[0];
k._msFamilyName=(g.hasClass(n,"placeholder")?"":n.value);
k._msGivenName=(g.hasClass(p,"placeholder")?"":p.value);
g.removePlaceholder(o);
o.value=k._msName=k._msFamilyName+k._msGivenName;
g.rmClass(q,"column_seperated");
setTimeout(function(){
o.focus();
});
}},"addr_faceUpload":{bPropagable:false,fHandle:function(l,m){
i.msg("msg:COM_FACE_UPLOAD",m);
}},"addr_group_del":{bPropagable:false,fHandle:function(l,m){
g.removeSelf(g.parents(".group_item",m)[0]);
}},"addr_group_add":{bPropagable:false,fHandle:function(l,m){
var n=this;
this.data.get("group",{sType:"normal"},function(o){
i.msg("msg:COM_GROUP_LIST",{oGroupList:o,oDom:m,fItemClick:function(p){
var q=g.parents('li[ui-type="column"]',m)[0],r=g.finds('[data-id="'+p+'"]',q);
!r.length&&n.data.get("group",{sId:p},function(s){
g.insertHTML(m,"beforeBegin",n.view.tmpl("detail_group_bind",s[0]));
});
}});
});
}},"addr_group_bind":{bPropagable:false,fHandle:function(m,n){
var q=[],p=g.finds('li[token="oEmail"] input[ui-type="input"]',this._moDomContainer),o=+n.getAttribute("data-bind");
o=o==-1?0:o;
q.push({sItemValue:'<span>\u9ED8\u8BA4\u6536\u4FE1\u5E10\u53F7\uFF1A</span>'});
for(var r=0,s=p.length;r<s;r++)
{
p[r].value&&q.push({sId:r,sItemValue:g.TE(['<span class="comm_menu">','<input class="comm_menu_radio" type="radio" style="margin-left:0;" ','$@$if($bCheck$)$@$',' checked="" ','$@$endif$@$','/>','$sEmail$','</span>']).replace({bCheck:o==r,sEmail:p[r].value})});
}
q.length&&q.push({bDisSelect:true,nHeight:6,sItemValue:'<div class="menu_item_line"></div>'});
q.push({sId:"_remove_",sItemValue:'<span class="comm_menu">\u79FB\u51FA\u8BE5\u7EC4</span>'});
i.msg("msg:COM_COMM_MENU",{oItems:q,oDom:n,nWidth:220,fItemClick:function(l){
if(l=="_remove_")
{
g.removeSelf(g.parents(".group_item",n)[0]);
}
else{
n.setAttribute("data-bind",l);
}
}});
}}},msg:{"msg:LIST_SHOW":function(){
this.hide();
this._mbIsSearch=false;
},"msg:SEARCH_SHOW":function(){
this.hide();
this._mbIsSearch=true;
},"msg:ADDEDIT_ADD":function(l){
this.action_(l||{});
},"msg:ADDEDIT_SAVE":function(){
this._save();
},"msg:ADDEDIT_CANCEL":function(l){
var m=l||this._moParam.sDialogId;
this._cancel(l);
},"msg:INFO_SHOW":function(){
this.hide();
}}});
this._bindMailToGroup=function(l){
var p={},n=l["oEmail"],o=l["oGroup"];
for(var q=0;q<n.length;q++)
{
if(n[q].sGroupId)
{
p[n[q].sGroupId]=q;
}
}
for(var q=0;q<o.length;q++)
{
var m=p[o[q].sId];
if(typeof (m)!="undefined")
{
o[q].nIdx=m;
}
}
p=n=o=h;
return l;
};
this._cancel=function(l){
var n=this,m=this._moParam.nEditType,o=this._moParam.sDialogId;
if(o)
{
g.QMDialog(o)&&g.QMDialog(o).close();
}
else if(m==1)
{
i.msg("msg:APP_HOME");
}
else{
debug("cancel id:"+l);
if(l&&l!=this.data.CONST.COMBINE_NAME)
{
this.data.get("item",{sType:this._mbIsSearch?"search":"list",sId:l},function(p){
i.cmd("Contact.Info",p);
});
}
else{
i.cmd(this._mbIsSearch?"Contact.Search":"Contact.List");
}
}
};
this._save=function(){
var p=this,n=p._parse(),o=this._moDomContainer,m=this._moParam.nEditType,l=n.id==p.data.CONST.COMBINE_NAME,q=this._moParam.sDialogId;
if(!this._validate(n))
{
return;
}
p.data.put(l?"combine":"item",n,function(r){
if(!r)
{
return;
}
var t=getTop();
t.QMAddress&&t.QMAddress.setExpired(0);
t.QMContactSelectData&&t.QMContactSelectData.setExpired(0);
t.QMMLCache.upVer();
t.setTimeout(function(){
t.reloadLeftWin();
},1000);
if(q)
{
g.QMDialog(q)&&g.QMDialog(q).close();
}
else if(m==1)
{
i.msg("msg:APP_HOME");
}
else if(m==2)
{
var s=g.finds('input[name="sId"]',o)[0];
s&&(s.value=r.sId);
}
else{
if(r.sOriginalType=="normal"&&!this._mbIsSearch)
{
i.cmd("Contact.Info",g.merge({bIsCombine:l},p.data.ref(),r));
}
else{
i.cmd(p._mbIsSearch?"Contact.Search":"Contact.List");
}
}
});
};
this._validate=function(l){
for(var n in l)
{
var m=l[n];
if(!m)
{
continue;
}
if(n=="email")
{
for(var o=0;o<m.length;o++)
{
if(m[o].sVal&&!/^[^@]+@[0-9a-z+_.=-]+\.[0-9a-z]{2,4}$/gi.test(decodeURIComponent(m[o].sVal)))
{
g.showError("\u8BF7\u8F93\u5165\u6B63\u786E\u7684\u90AE\u7BB1\u5E10\u53F7");
return false;
}
}
}
else if(n=="tel")
{
for(var o=0;o<m.length;o++)
{
if(m[o].sVal&&!/^[\s0-9-+\*#\t]+$/gi.test(decodeURIComponent(m[o].sVal)))
{
g.showError("\u7535\u8BDD\u53EA\u80FD\u5305\u542B\u6570\u5B57\u3001\u201C+\u201D\u3001\u201C-\u201D\u3001\u201C*\u201D\u3001\u201C#\u201D");
return false;
}
}
}
else if(n=="birthday")
{
if(m[0].sVa&&!/^\d{1,2}[\s-]?\d{1,2}$/gi.test(decodeURIComponent(m[0].sVal)))
{
g.showError("\u751F\u65E5\u683C\u5F0F\u53C2\u8003\uFF1A2012-12-21");
return false;
}
}
else if(typeof (m)=="object"&&n!="group")
{
for(var o=0;o<m.length;o++)
{
if(false&&new RegExp("[\\|/:\'\"]").test(m[o].sVal+m[o].sLabel))
{
g.showError(m[o].sLabel+"\u4E0D\u80FD\u5305\u542B\\|/:'\"\u7B49\u7279\u6B8A\u5B57\u7B26");
return;
}
}
}
m=h;
}
return true;
};
this._parse=function(){
var s=g.finds('[ui-type="column"]',this._moDomContainer),q={};
var r=g.finds('img[ui-type="avator"]',this._moDomContainer)[0];
if(r.getAttribute("data-empty")!="1")
{
var B=r.getAttribute("src")||"";
q["photo"]=[{sUrl:g.encodeURI(B),sVal:g.encodeURI(B.replace(/^.*viewfile\?f=(\w+).*$/gi,"$1"))}];
}
for(var D=0,F=s.length;D<F;D++)
{
var u=g.finds('[ui-type="input"]',s[D]),n=g.finds('label span',s[D])[0];
for(var E=0,G=u.length;E<G;E++)
{
var x=u[E].name.substring(1),A=u[E].getAttribute("data-type")||'',C=(g.isBrowser("ie")&&u[E].getAttribute("default")==u[E].value)?"":u[E].value;
x=u[E].getAttribute("data-formatted")=="1"?x:x.toLowerCase();
if(x=="id")
{
q[x]=g.trim(C);
}
else{
var y=g.encodeURI(g.trim(n&&n.innerHTML||"")),z=g.encodeURI(g.trim(C));
if(!q[x])
{
q[x]=[];
}
if(x=="email"||x=="tel"||x=="country")
{
var o=this.data.vcardref(y);
o&&(A=o);
}
q[x].push({sLabel:y,sType:A,sVal:z});
}
}
}
var t=g.finds('a[data-bind]',this._moDomContainer);
for(var D=0,F=t.length;D<F;D++)
{
if(!q["group"])
{
q["group"]=[];
}
var p=+t[D].getAttribute("data-bind"),w=t[D].getAttribute("data-id"),v=q["email"][p]?q["email"][p].sVal:q["email"][0].sVal;
q["group"].push({sVal:[v,w].join(":")});
}
return q;
};
this._checkGroup=function(){
var n=g.finds('li[token="oEmail"]',this._moDomContainer),m=g.finds('li[ui-subtype="group"]',this._moDomContainer)[0],l=0;
for(var o=0;o<n.length;o++)
{
if(g.finds('[ui-type="input"]',n[o])[0].value)
{
l++;
}
}
if(l>1)
{
!g.hasClass(m,"group_multi")&&g.addClass(m,"group_multi");
}
else{
g.hasClass(m,"group_multi")&&g.rmClass(m,"group_multi");
}
};
this._detectValue=function(){
var l=false,m=g.finds('li[ui-type="column"] [ui-type="input"]',this._moDomContainer);
for(var n=0;n<m.length;n++)
{
if(m[n].name=="sId")
{
continue;
}
if(m[n].value&&m[n].value!=m[n].getAttribute("default"))
{
l=true;
break;
}
}
i.msg("msg:ADDEDIT_DISABLE_SAVE",!l);
};
},"Base");
})(QMContactAdaptor);
(function(g,h){
d.create("Contact.List",function(j,i){
this.init_=function(k){
j.init_.call(this,k);
this._moDomContainer=k.oContainer;
this._moParam=k.oParam;
};
this.action_=function(k){
j.action_.call(this);
var m=this,l=k||{};
i.msg("msg:LIST_SHOW");
this._check();
};
this.destory_=function(){
j.destory_.call(this);
this._moParam=this._mnScroll=this._moDomContainer=h;
};
this.getListType=function(){
return "list";
};
this.show=function(){
var k=!this.isShow();
j.show.call(this);
if(typeof (this._mnScroll)!="undefined"&&k)
{
g.bodyScroll(getTop().getMainWin(),"scrollTop",this._mnScroll);
}
};
this.hide=function(){
this.isShow()&&(this._mnScroll=g.bodyScroll(getTop().getMainWin(),"scrollTop"));
j.hide.call(this);
};
this.register({mouseover:{"list_mor":{bPropagable:false,fHandle:function(k,l){
!g.hasClass(l,"V")&&g.addClass(l,"V");
}}},mouseout:{"list_mot":{bPropagable:false,fHandle:function(k,l){
g.hasClass(l,"V")&&g.rmClass(l,"V");
}}},click:{"list_sort":{bPropagable:false,fHandle:function(k,l){
var m=this;
this.data.get("list",g.extend({},this._moParam,{sType:this.getListType(),sGroupId:this._moParam.sViewGroupId,sViewType:g.attr(l,"data-type"),sSortType:g.attr(l,"data-sorttype")}),function(n){
if(n)
{
n.oList.length&&(g.parents('div[ui-type="innerlist"]',l)[0].innerHTML=m.view.tmpl("list_inner",n));
m._check();
}
});
}},"list_group":{bPropagable:false,fHandle:function(k,l){
this.data.get("group",{},function(m){
i.msg("msg:COM_VIEWTYPE_LIST",{sId:l.getAttribute("data-groupid")||"",oGroup:m,oDom:l,oPos:{x:l.offsetLeft,y:l.offsetTop+l.offsetHeight}});
});
}},"list_edit_group":{bPropagable:false,fHandle:function(k,l){
i.msg("msg:COM_GROUP_EDIT",{sGroupId:l.getAttribute("data-groupid")});
}},"list_create":{bPropagable:false,fHandle:function(k,l){
i.cmd("Contact.AddEdit",{sAction:"add",sGroupId:l.getAttribute("data-groupid")});
}},"list_create_group":{bPropagable:false,fHandle:function(k,l){
i.msg("msg:COM_GROUP_EDIT");
}},"list_edit":{bPropagable:false,fHandle:function(k,l){
var m=this._check();
if(m)
{
g.finds('input[ui-type="checkbox"]',l)[0].checked=!g.finds('input[ui-type="checkbox"]',l)[0].checked;
this._check();
}
else{
var n={sType:this.getListType(),bShowDetail:true,sGroupId:this._moParam.sViewGroupId,sId:l.getAttribute("data-id")};
this.data.get("item",n,function(o){
i.cmd("Contact.Info",o);
});
}
this._multiSelect(k,l);
}},"list_fake_check":{bPropagable:false,fHandle:function(k,l){
}},"list_check":{bPropagable:false,fHandle:function(k,l){
this._check();
this._multiSelect(k,g.parents('li[ui-type="column"]',l)[0]);
this._fChangeSelectAllCkbStatus();
}},"list_select_all":{bPropagable:false,fHandle:function(k,l){
var p=l.getAttribute("data-type"),m=l.middleStatus?false:l.checked,n=g.finds('li[data-type="'+p+'"]',this._moDomContainer),o=g.finds("input[ck=list_select_all]",this._moDomContainer);
o&&o[0]&&(o[0].checked=m);
for(var q=0;q<n.length;q++)
{
g.finds('input[ui-type="checkbox"]',n[q])[0]&&(g.finds('input[ui-type="checkbox"]',n[q])[0].checked=m);
}
this._check();
}}},mousedown:{"setCheckValue":{bPropagable:false,fHandle:function(l,k){
k.middleStatus=k.indeterminate;
}}},msg:{"data:GROUP_SAVE":function(k){
location.href=g.urlReplacer({r:Math.random(),view:"normal",groupid:k.sGroupId});
},"data:ITEM_DELETE":function(k){
for(var m=0;m<k.length;m++)
{
g.removeSelf(g.finds(g.T("li[data-id='$id$']").replace({"id":k[m].sId}),this._moDomContainer)[0]);
}
var l=g.finds('li[ui-type="column"]',this._moDomContainer);
if(this.getListType()!="search"&&!l.length)
{
this._insertToHead(this.view.tmpl("list_empty",{bIsSearch:this.getListType()=="search",sGroupId:this._moParam.sViewGroupId}));
}
},"data:ITEM_UPDATE":function(k){
var t=this._moParam.sViewType,s=this._moParam.sViewGroupId,q=k.sItemType,r=k.sOriginalType,o=k.oGroup||[],l=g.finds(g.T("li[data-id='$id$']").replace({"id":k.sId}),this._moDomContainer)[0],n;
for(var u=0;u<o.length;u++)
{
if(o[u].sId==s)
{
n=o[u];
break;
}
}
if(r=="other"&&this.getListType()=="list"||t!=q||s&&!n)
{
l&&g.removeSelf(l);
l=h;
if(l&&!g.finds('li[data-id]',this._moDomContainer).length)
{
this._insertToHead(this.view.tmpl("list_empty",{sGroupId:s}));
}
return;
}
var m=g.finds('li[ui-type="column-empty"]',this._moDomContainer)[0],p=this.view.tmpl("list_item",g.extend({sViewType:t,sViewGroupId:s},k));
if(m)
{
g.removeSelf(m);
m=h;
}
if(l)
{
g.insertHTML(l,"afterEnd",p);
g.removeSelf(l);
l=h;
}
else{
this._insertToHead(p);
}
},"msg:APP_KEY/CTRL+A":function(k){
if(this.isShow())
{
var m=g.finds('input[ui-type="checkbox"]',this._moDomContainer);
for(var o=0,p=m.length;o<p;o++)
{
m[o].checked=true;
}
var n=g.finds('input[ui-type="checkall"]',this._moDomContainer);
for(var o=0;o<n.length;o++)
{
n[o].checked=true;
}
this._check();
}
},"msg:LIST_COMBINE":function(){
var o=this.getListType();
if(this.isShow())
{
var k=false;
this._eachChosen(function(q){
var r=g.parents('li[ui-type="column"]',q)[0];
if(g.attr(r,"data-type")=="domain"||g.attr(r,"data-type")=="qq"||g.attr(r,"data-type")=="other")
{
k=true;
}
});
if(k)
{
g.showError("\u5386\u53F2\u8054\u7CFB\u4EBA/\u57DF\u540D\u90AE\u7BB1\u8054\u7CFB\u4EBA/QQ\u597D\u53CB\u4E0D\u652F\u6301\u5408\u5E76");
return;
}
var l=[],n={},m=[];
this._eachChosen(function(q){
this.data.get("item",{sType:this.getListType(),sId:q.value},function(r){
l.push(r);
for(var s=0;s<r.oGroup.length;s++)
{
n[r.oGroup[s].sId]=r.oGroup[s];
}
});
});
for(var p in n)
{
m.push(n[p]);
}
this._unselect();
this.data.get("combine",{sType:o,oIds:l},function(q){
q&&i.cmd("Contact.AddEdit",{sType:o,sId:q.sId,oGroupList:m,oIds:l});
});
}
},"msg:LIST_COMPOSE":function(){
if(this.isShow())
{
var l=this,k=[],m=this._moParam.sViewGroupId;
this._eachChosen(function(n){
this.data.get("item",{sType:this.getListType(),sId:n.value},function(o){
var q=o.oEmail[0].sVal,p=function(t,s){
var u=t||"";
return u?['"',g.htmlDecode(u),'"',' <',s,'>'].join(""):s;
};
for(var r=0;r<o.oEmail.length;r++)
{
if(l.getListType()!="search"&&m&&m==o.oEmail[r].sGroupId)
{
q=o.oEmail[r].sVal;
break;
}
}
k.push(p(o.oName[0].sVal,q));
});
});
i.msg("msg:COM_COMPOSE",{sDefAddrs:k.join("; ")});
this._unselect();
}
},"msg:LIST_ADD_GROUP_MEMBER":function(k){
var m=k||{},l=[],o=m.sGroupId,n=this;
if(this.isShow())
{
this._eachChosen(function(p){
this.data.get("item",{sType:this.getListType(),sId:p.value},function(q){
q.sId&&l.push(q);
});
});
if(o=="create")
{
i.msg("msg:COM_GROUP_EDIT",{oAddrs:l});
}
else if(l.length)
{
this.data.addGrpupMember(o,l,function(){
if(n._moParam.sViewType=="other"&&n.getListType()!="search")
{
for(var q=0;q<l.length;q++)
{
var p=g.finds(g.T("li[data-id='$id$']").replace({"id":l[q].sId}),n._moDomContainer)[0];
g.removeSelf(p);
p=h;
}
}
n._unselect();
});
}
else{
g.showInfo("\u6CA1\u6709\u9700\u8981\u6DFB\u52A0\u5230\u901A\u4FE1\u5F55\u7684\u8054\u7CFB\u4EBA");
}
}
},"msg:LIST_SCROLL":function(k){
var l=k||{};
this._itemActivate(l.sId,true);
},"msg:LIST_ACTIVATE":function(k){
var l=k||{};
this._itemActivate(l.sId);
},"msg:INFO_DEL":function(){
if(this.isShow())
{
var k=false,l=false;
this._eachChosen(function(m){
var n=g.parents('li[ui-type="column"]',m)[0];
if(g.attr(n,"data-type")=="domain")
{
k=true;
}
if(g.attr(n,"data-type")=="qq")
{
l=true;
}
});
if(k||l)
{
g.showError("\u57DF\u540D\u90AE\u7BB1\u8054\u7CFB\u4EBA/QQ\u597D\u53CB\u4E0D\u652F\u6301\u5220\u9664");
}
else{
this._eachChosen(function(m){
this._delItem(m.value);
});
this._unselect();
}
this._fChangeSelectAllCkbStatus();
}
},"msg:ADDEDIT_UNSELECT":function(){
this._unselect();
},"msg:SEARCH_SHOW":function(){
this.hide();
},"msg:ADDEDIT_SHOW":function(){
this.hide();
},"msg:INFO_SHOW":function(){
this.hide();
}}});
this._insertToHead=function(k){
var m=g.finds('ul[ui-type="list"]',this._moDomContainer)[0],l=g.finds('li[ui-type="column-header"]',m)[0];
if(l)
{
g.insertHTML(l,"afterEnd",k);
}
else{
g.insertHTML(m,"afterBegin",k);
}
m=l=h;
};
this._eachChosen=function(k){
var m=g.finds('input[ui-type="checkbox"]',this._moDomContainer);
for(var n=0,o=m.length;n<o;n++)
{
m[n].checked&&k.call(this,m[n]);
}
m=h;
};
this._unselect=function(k){
this._eachChosen(function(n){
if(!k||k==n.value)
n.checked=false;
});
var l=g.finds('input[ui-type="checkall"]',this._moDomContainer);
for(var m=0;m<l.length;m++)
{
l[m].checked=false;
}
this._check();
this._fChangeSelectAllCkbStatus();
};
this._delItem=function(k,l){
this.data.del("item",{sId:k,sType:this.getListType()});
};
this._check=function(){
var o=g.finds('input[ui-type="checkbox"]',this._moDomContainer),k=0,m={normal:0,other:0,domain:0,qq:0};
for(var p=0,q=o.length;p<q;p++)
{
var n=g.parents('li[ui-type="column"]',o[p])[0];
if(o[p].checked)
{
k++;
m[g.attr(n,"data-type")]++;
!g.hasClass(n,"B")&&g.addClass(n,"B");
}
else{
g.hasClass(n,"B")&&g.rmClass(n,"B");
}
n=h;
}
i.msg("msg:LIST_MULTI",{nSelectCnt:k,nQQCnt:m["qq"],nDomainCnt:m["domain"],nNormalCnt:m["normal"],nOtherCnt:m["other"]});
o=h;
return k;
};
this._fChangeSelectAllCkbStatus=function(){
var k=0,l=0,m=g.finds("input[ck=list_select_all]",this._moDomContainer)[0];
if(m)
{
var p=m.getAttribute("data-type"),o=g.finds('li[data-type="'+p+'"] input[type=checkbox]',this._moDomContainer),n=g.finds(".B",this._moDomContainer);
o&&(l=o.length);
n&&(k=n.length);
if(l===k)
{
m.checked=true;
m.indeterminate=false;
}
else if(k===0)
{
m.checked=false;
m.indeterminate=false;
}
else{
m.indeterminate=true;
}
}
},this._itemActivate=function(m,k){
var u=m||"",t=g.finds('li[ui-type="column"]',this._moDomContainer);
for(var v=0,w=t.length;v<w;v++)
{
if(u==t[v].getAttribute("data-id"))
{
var o=g.S("bar",window).clientHeight,p=t[v].offsetHeight,s=t[v].offsetTop,n=s+p,r=g.bodyScroll(window,"scrollTop"),q=g.bodyScroll(window,"clientHeight")+r;
!g.hasClass(t[v],"active")&&g.addClass(t[v],"active");
if(s<r+o)
{
g.bodyScroll(window,"scrollTop",r-p);
k&&(this._mnScroll=r-p);
}
else if(n>q)
{
g.bodyScroll(window,"scrollTop",r+p);
k&&(this._mnScroll=r+p);
}
}
else{
g.hasClass(t[v],"active")&&g.rmClass(t[v],"active");
}
}
};
this._mnIndex=-1;
this._multiSelect=function(m,k){
var q=g.finds('li[ui-type="column"]',k.parentNode),o=-1;
for(var s=0,u=q.length;s<u;s++)
{
if(q[s].getAttribute("data-id")==k.getAttribute("data-id"))
{
o=s;
break;
}
}
if(m.shiftKey&&this._mnIndex>-1&&o>-1&&this._mnIndex!=o)
{
var p=g.finds('input[ui-type="checkbox"]',q[this._mnIndex])[0],r=g.finds('input[ui-type="checkbox"]',q[o])[0],n=p.checked;
if(n==r.checked)
{
for(var t=0,u=q.length;t<u;t++)
{
if(t>Math.min(this._mnIndex,o)&&t<Math.max(this._mnIndex,o))
{
g.finds('input[ui-type="checkbox"]',q[t])[0].checked=n;
}
}
this._check();
}
}
this._mnIndex=o;
};
},"Base");
})(QMContactAdaptor);
(function(g,h){
d.create("Contact.Search",function(j,i){
this.init_=function(k){
j.init_.call(this,k);
this._moDomContainer=k.oContainer;
this._moParam=k.oParam;
};
this.action_=function(k){
var l=this;
if(!k)
{
this.show();
i.msg("msg:SEARCH_SHOW");
}
else{
l.render(l.view.tmpl("list",g.extend({sType:"search",bLoading:true},k)));
i.msg("msg:SEARCH_SHOW",{bLoading:true});
l.data.get("list",{sType:"search",sKeyword:k.sKeyword},function(m){
if(m)
{
g.extend(l._moParam,{sKeyword:k.sKeyword});
var n=g.extend({},l._moParam,m);
l.render(l.view.tmpl("list",n));
}
else{
l.render(l.view.tmpl("list",{sType:"search",bError:true}));
}
i.msg("msg:SEARCH_SHOW",m);
});
}
this.show();
this._check();
};
this.destory_=function(){
j.destory_.call(this);
this._moParam=this._moSearchData=this._moDomContainer=h;
};
this.getListType=function(){
return "search";
};
this.register(j.getDriven(),{click:{"search_back":{bPropagable:false,fHandle:function(k,l){
i.msg("msg:APP_HOME");
}}},msg:{"data:SEARCH_LIST_UPDATE_CNT":function(l,k,m){
if(l<1)
{
this.render(this.view.tmpl('list',{sType:'search',nCnt:0,oList:[]}));
}
else{
g.finds('[ui-type="list_header"]',this._moDomContainer)[0].innerHTML=this.view.tmpl('list_header',{sType:'search',nCnt:l});
var n=g.finds('li[ui-type="column-title-'+m+'"]',this._moDomContainer)[0];
if(n)
{
if(k<1)
{
g.removeSelf(n.nextSibling);
g.removeSelf(n);
}
else{
g.finds('.f_size',n)[0].innerHTML='('+k+')';
}
}
}
},"msg:SEARCH_SHOW":function(){
},"msg:LIST_SHOW":function(){
this.hide();
}}});
},"Contact.List");
})(QMContactAdaptor);
(function(g,h){
d.create("Contact.Group",function(j,i){
this.init_=function(k){
j.init_.call(this,k);
this._moDomContainer=k.oContainer;
this._moParam=k.oParam;
this._trimTitle();
};
this.action_=function(k){
j.action_.call(this);
},this.destory_=function(){
j.destory_.call(this);
this._moParam=this._moDomContainer=h;
};
this.show=function(){
j.show.call(this);
this._autoFixed();
};
this.register({click:{"group_create":{bPropagable:false,fHandle:function(k,l){
i.msg("msg:COM_GROUP_EDIT");
}}},msg:{"data:GROUP_UPDATE":function(k){
var l=g.finds('span[ui-type="groupcnt"]',this._moDomContainer);
for(var n=0;n<l.length;n++)
{
var m=g.attr(l[n],"data-id");
g.hasClass(l[n],"fading_out_in")&&g.rmClass(l[n],"fading_out_in");
debug(k,2);
if(typeof (k[m])!="undefined")
{
if(l[n].innerHTML!=k[m])
{
g.addClass(l[n],"fading_out_in");
}
l[n].innerHTML=k[m];
setTimeout(function(o){
return function(){
g.hasClass(o,"fading_out_in")&&g.rmClass(o,"fading_out_in");
};
}(l[n]),1200);
}
}
},"msg:APP_RESIZE":function(k){
if(this.isShow())
{
this._moDomContainer.style.marginTop="0";
this._autoFixed();
}
},"msg:APP_SCROLL":function(k){
if(this.isShow())
{
this._autoFixed();
}
},"msg:LIST_SHOW":function(){
this.show();
g.hasClass(this._moDomContainer,"panel_groups_blur")&&g.rmClass(this._moDomContainer,"panel_groups_blur");
},"msg:SEARCH_SHOW":function(){
this.show();
!g.hasClass(this._moDomContainer,"panel_groups_blur")&&g.addClass(this._moDomContainer,"panel_groups_blur");
},"msg:ADDEDIT_SHOW":function(){
this.hide();
},"msg:INFO_SHOW":function(){
this.hide();
}}});
this._trimTitle=function(){
var k=g.finds('span[ui-type="grouptitle"]',this._moDomContainer);
for(var l=0;l<k.length;l++)
{
k[l].innerHTML=g.htmlEncode(g.subAsiiStr(g.htmlDecode(k[l].innerHTML),20,"..."));
}
};
this._autoFixed=function(){
var p=this._moDomContainer.offsetTop,m=this._moDomContainer.clientHeight,l=this._moDomContainer.scrollHeight,o=g.bodyScroll(window,"scrollTop"),n=g.bodyScroll(window,"clientHeight")+o,k=g.S("list",window).style.display!="none",q=g.S(k?"list":"search",window);
if(l<n&&q.offsetHeight>=l)
{
if(!g.hasClass(this._moDomContainer,"panel_groups_fixed"))
{
g.addClass(this._moDomContainer,"panel_groups_fixed");
}
}
else{
if(g.hasClass(this._moDomContainer,"panel_groups_fixed"))
{
g.rmClass(this._moDomContainer,"panel_groups_fixed");
}
}
if(g.hasClass(this._moDomContainer,"panel_groups_fixed"))
{
if(m!=l&&m-l<5)
{
this._moDomContainer.style.marginTop=(m-l)+"px";
}
}
else{
this._moDomContainer.style.marginTop="0";
}
};
},"Base");
})(QMContactAdaptor);
(function(g,h){
d.create("Contact.Nav",function(j,i){
this.init_=function(k){
j.init_.call(this,k);
this._moDomContainer=k.oContainer;
this._moParam=k.oParam;
};
this.action_=function(){
j.action_.call(this);
i.msg("msg:NAV_SHOW");
};
this.destory_=function(){
j.destory_.call(this);
this._moParam=this._moDomContainer=h;
};
this.register({keydown:{"nav_keyword":{bPropagable:false,fHandle:function(k,l){
var m=l.value;
if(k.keyCode==13)
{
m?i.cmd("Contact.Search",{sKeyword:m}):i.cmd("Contact.List");
g.preventDefault(k);
}
g.stopPropagation(k);
}}},click:{"nav_pre_back":{bPropagable:false,fHandle:function(k,l){
i.cmd(this._mbIsSearch?"Contact.Search":"Contact.List");
}},"nav_pre_compose":{bPropagable:false,fHandle:function(k,l){
this.data.get("item",{sType:this._mbIsSearch?"search":"list",sId:g.attr(l,"data-id")},function(m){
var o=[],n=function(q){
var r=m.oName&&m.oName[0]&&m.oName[0].sVal||"";
return r?['"',g.htmlDecode(r),'"',' <',q,'>'].join(""):q;
};
if(m.oEmail)
{
if(m.oEmail.length>1)
{
for(var p=0;p<m.oEmail.length;p++)
{
o.push({sId:m.oEmail[p].sVal,sItemValue:m.oEmail[p].sVal});
}
i.msg("msg:COM_COMM_MENU",{oItems:o,oDom:l,fItemClick:function(q){
i.msg("msg:COM_COMPOSE",{sDefAddrs:n(q)});
}});
}
else{
i.msg("msg:COM_COMPOSE",{sDefAddrs:n(m.oEmail[0].sVal)});
}
}
else{
i.msg("msg:COM_COMPOSE",{sDefAddrs:""});
}
});
}},"nav_pre_edit":{bPropagable:false,fHandle:function(k,l){
i.cmd("Contact.AddEdit",{sType:this._mbIsSearch?"search":"",sId:g.attr(l,"data-id")});
}},"nav_pre_store":{bPropagable:false,fHandle:function(k,l){
i.cmd("Contact.AddEdit",{sType:this._mbIsSearch?"search":"",sId:g.attr(l,"data-id")});
}},"nav_pre_del":{bPropagable:false,fHandle:function(k,l){
var m=this;
g.confirmBox({title:"\u5220\u9664\u786E\u8BA4",msg:["\u60A8\u786E\u5B9A\u8981\u5220\u9664\u9009\u4E2D\u7684\u8054\u7CFB\u4EBA\u5417\uFF1F"].join(""),width:450,onreturn:function(n){
if(n)
{
m.data.del("item",{sId:l.getAttribute("data-id"),sType:m._mbIsSearch?"search":"list"},function(){
i.cmd(m._mbIsSearch?"Contact.Search":"Contact.List");
});
}
}});
}},"nav_search":{bPropagable:false,fHandle:function(k,l){
var m=g.S("keyword",window).value;
m?i.cmd("Contact.Search",{sKeyword:m}):i.cmd("Contact.List");
}},"nav_contact":{bPropagable:false,fHandle:function(k,l){
i.msg("msg:LIST_ADD_GROUP_MEMBER",{sGroupId:"0"});
}},"nav_combine":{bPropagable:false,fHandle:function(k,l){
debug("\u624B\u5DE5\u5408\u5E76");
i.msg("msg:LIST_COMBINE");
}},"nav_compose":{bPropagable:false,fHandle:function(k,l){
i.wsp("msg:LIST_COMPOSE");
}},"nav_del":{bPropagable:false,fHandle:function(k,l){
g.confirmBox({title:"\u5220\u9664\u786E\u8BA4",msg:["\u60A8\u786E\u5B9A\u8981\u5220\u9664\u9009\u4E2D\u7684\u8054\u7CFB\u4EBA\u5417\uFF1F"].join(""),width:450,onreturn:function(m){
if(m)
{
i.msg("msg:INFO_DEL");
}
}});
}},"nav_group":{bPropagable:false,fHandle:function(k,l){
this.data.get("group",{sType:"normal"},function(m){
i.msg("msg:COM_GROUP_LIST",{oGroupList:m,oDom:l,bHasCreate:true,fItemClick:function(n){
i.msg("msg:LIST_ADD_GROUP_MEMBER",{sGroupId:n});
}});
});
}},"nav_unselect":{bPropagable:false,fHandle:function(k,l){
i.msg("msg:ADDEDIT_UNSELECT");
this._render("list");
}},"nav_create":{bPropagable:false,fHandle:function(k,l){
i.msg("msg:ADDEDIT_ADD",{sAction:"add",sGroupId:this._moParam.sViewGroupId||""});
}},"nav_save":{bPropagable:false,fHandle:function(k,l){
i.msg("msg:ADDEDIT_SAVE");
}},"nav_cancel":{bPropagable:false,fHandle:function(k,l){
i.msg("msg:ADDEDIT_CANCEL",l.getAttribute("data-id"));
g.stopPropagation(k);
}},"nav_sync":{bPropagable:false,fHandle:function(k,l){
i.msg("msg:COM_SYNC");
}},"nav_tool":{bPropagable:false,fHandle:function(k,l){
var n=this,m=140;
new g.QMMenu({oEmbedWin:window,oEmbedToDom:l.parentNode,sId:"import",nX:l.offsetLeft,nY:l.offsetTop+l.offsetHeight,nWidth:m,oItems:[{sId:"COM_IMPORT_QQ",sItemValue:'<span class="comm_menu">\u5BFC\u5165QQ\u90AE\u7BB1\u8054\u7CFB\u4EBA</span>'},{sId:"COM_IMPORT_MAIL",sItemValue:'<span class="comm_menu">\u5BFC\u5165\u5176\u4ED6\u90AE\u7BB1\u8054\u7CFB\u4EBA</span>'},{sId:"COM_IMPORT_FILE",sItemValue:'<span class="comm_menu">\u5BFC\u5165\u8054\u7CFB\u4EBA\u6587\u4EF6</span>'},{sId:"COM_EXPORT",sItemValue:'<span class="comm_menu">\u5BFC\u51FA\u8054\u7CFB\u4EBA</span>'},{bDisSelect:true,nHeight:6,sItemValue:'<div class="menu_item_line"></div>'},{sId:"COM_COMBINE",sItemValue:'<span class="comm_menu">\u5408\u5E76\u8054\u7CFB\u4EBA</span>'}],nItemHeight:23,onitemclick:function(o){
n.data.get("group",{sType:"normal"},function(p){
i.msg("msg:"+o,{oGroupList:p,sGroupId:n._moParam.sViewGroupId,sViewType:n._moParam.sViewType});
});
}});
}}},msg:{"msg:ADDEDIT_DISABLE_SAVE":function(k){
var l=g.finds('a[ui-type="save"]',this._moDomContainer)[0];
if(!l)
{
return;
}
if(k)
{
!g.hasClass(l,"btn_blue_disabled")&&g.addClass(l,"btn_blue_disabled");
l.removeAttribute("ck");
}
else{
g.hasClass(l,"btn_blue_disabled")&&g.rmClass(l,"btn_blue_disabled");
l.setAttribute("ck","nav_save");
}
},"msg:ADDEDIT_SHOW":function(k){
this._render("detail",k);
},"msg:LIST_SHOW":function(){
this._render("list");
this._mbIsSearch=false;
},"msg:SEARCH_SHOW":function(){
this._mbIsSearch=true;
},"msg:LIST_MULTI":function(k){
this._render(k.nSelectCnt>0?"multi":"list",k);
},"msg:INFO_SHOW":function(k){
this._render("preview",k);
}}});
this._render=function(l,k){
var m=k||{};
this.render(this.view.tmpl("nav",{sType:l,sId:m.sId,bIsChanged:m.sItemType=="normal"&&m.sOriginalType=="other",sItemType:m.sItemType,sOriginalType:m.sOriginalType,nMailCnt:m.oEmail&&m.oEmail.length||0,nSelectCnt:m.nSelectCnt,nQQCnt:m.nQQCnt,nDomainCnt:m.nDomainCnt,nOtherCnt:m.nOtherCnt,nNormalCnt:m.nNormalCnt,sViewType:this._moParam.sViewType,nEditType:this._moParam.nEditType,bIsSearch:this._mbIsSearch}));
l=="list"&&g.placeholder([g.S("keyword",window)]);
};
},"Base");
})(QMContactAdaptor);
(function(g,h){
d.create("Contact.Info",function(j,i){
this.init_=function(k){
j.init_.call(this,k);
this._moDomContainer=k.oContainer;
this._moParam=k.oParam;
};
this.action_=function(k){
var n=this,m=k||{},l=function(o){
n._render("detail",o);
i.msg("msg:INFO_SHOW",o);
i.msg(m.bIsCombine?"msg:LIST_SCROLL":"msg:LIST_ACTIVATE",o);
g.bodyScroll(window,"scrollTop",0);
};
if(m.bIsDomainDetail&&!this.isShow())
{
return;
}
j.action_.call(this);
if(m.sId)
{
if(m.bIsPreview)
{
this.data.get("item",m,function(o){
l(o);
});
}
else{
l(m);
}
}
};
this.destory_=function(){
j.destory_.call(this);
this._moParam=this._moDomContainer=h;
};
this.register({click:{"info_close":{bPropagable:false,fHandle:function(k,l){
this.hide();
i.msg("msg:LIST_ACTIVATE");
}},"info_compose":{bPropagable:false,fHandle:function(k,l){
var m=function(o,n){
return o?['"',g.htmlDecode(o),'"',' <',n,'>'].join(""):n;
};
i.msg("msg:COM_COMPOSE",{sDefAddrs:m(g.attr(l,"data-name"),l.innerHTML)});
}},"info_checkmail":{bPropagable:false,fHandle:function(k,l){
g.preventDefault(k);
debug(l.getAttribute("data-id"));
i.msg("msg:COM_MAIL_HISTORY",g.extend({sAddrId:l.getAttribute("data-id"),sEmail:l.getAttribute("data-email"),sName:l.getAttribute("data-name")},this._moParam));
}}},msg:{"data:ITEM_UPDATE":function(k){
var l=g.finds('div[ui-type="info_inner"]',this._moDomContainer)[0];
if(l)
{
var n=l.getAttribute("data-type"),m=l.getAttribute("data-id");
if(n=="detail"&&k.sId==m)
{
this._render("detail",k);
}
}
},"msg:INFO_HIDE":function(k){
this.hide();
i.msg("msg:LIST_ACTIVATE");
},"msg:INFO_DEL":function(k){
this.hide();
i.msg("msg:LIST_ACTIVATE");
},"msg:LIST_MULTI":function(k){
k&&this.hide();
},"msg:ADDEDIT_SHOW":function(){
this.hide();
i.msg("msg:LIST_ACTIVATE");
},"msg:SEARCH_SHOW":function(){
this.hide();
this._mbIsSearch=true;
},"msg:LIST_SHOW":function(){
this.hide();
this._mbIsSearch=false;
}}});
this._render=function(l,k){
this.show();
if(l=="detail")
{
this.render(this.view.tmpl("info",g.extend({sType:l},k)));
}
else if(l=="search")
{
this.render(this.view.tmpl("info",g.extend({sType:l},k)));
}
else if(l=="list")
{
this.render(this.view.tmpl("info",g.extend({sType:l,sViewGroupName:this._moParam.sViewGroupName},k)));
}
};
},"Base");
})(QMContactAdaptor);
(function(g,h){
d.create("Contact.Bar",function(j,i){
this.init_=function(k){
j.init_.call(this,k);
this._moDomContainer=k.oContainer;
this._moParam=k.oParam;
};
this.action_=function(k){
j.action_.call(this);
this.render(this.view.tmpl("bar"));
i.use("Contact.Nav",{oContainer:g.finds("div[ui-type='nav']",this._moDomContainer)[0],oDataCenter:this.data,oViewCenter:this.view,oParam:this._moParam}).cmd("Contact.Nav");
};
this.destory_=function(){
j.destory_.call(this);
this._moParam=this._moDomContainer=h;
};
},"Base");
})(QMContactAdaptor);
(function(g,h){
d.create("Contact.Components",function(k,j){
var i={bDisSelect:true,nHeight:6,sItemValue:'<div class="menu_item_line"></div>'};
this.init_=function(l){
k.init_.call(this,l);
};
this.isShow=function(){
return true;
};
this._parseDate=function(l){
var n=new Date(),o=g.trim(l).replace(/\D/g,""),m={};
if(o.length==8&&+o.substr(0,4)>1970&&+o.substr(0,4)<2050)
{
n.setFullYear(+o.substr(0,4));
n.setMonth(+o.substr(4,2)-1);
n.setDate(+o.substr(6,2));
}
else if(o.length==4)
{
n.setMonth(+o.substr(0,2)-1);
n.setDate(+o.substr(2,2));
}
return {nYear:n.getFullYear(),nMonth:n.getMonth()+1,nSelYear:(o.length==8&&o)?n.getFullYear():"",nSelMonth:((o.length==4||o.length==8)&&o)?(n.getMonth()+1):"",nSelDate:((o.length==4||o.length==8)&&o)?n.getDate():""};
};
this.register({msg:{"msg:APP_HOME":function(m){
var l=m||{};
location.href=g.urlReplacer(g.extend({r:Math.random()},l.oUrlParam),g.T("/cgi-bin/laddr_list?sid=$sid$&operate=view&t=contact&view=normal").replace({sid:g.getSid()}));
},"msg:COM_CALENDAR":function(l){
var p=this,q=l.sFormat||"MM-DD",n=function(){
var r=g.S("qmcontact_cal",window);
if(r)
{
r.onblur=r.onmousedown=r.onmouseover=r.onmouseout=null;
g.removeSelf(r);
}
r=h;
},o=function(s,r){
g.useCom("QMCalCom",function(t){
var w=new Date(),x=s||{};
var v=t.getMonthDays(x.nYear,x.nMonth),u=7,y=[],z=0;
while(z<v.length)
{
y.push(v.slice(z,z+u));
z+=u;
}
r(g.extend({nCurrYear:w.getFullYear(),nCurrMonth:w.getMonth()+1,nCurrDate:w.getDate(),oWeeks:y},x));
});
},m=function(r){
n();
g.insertHTML(l.oDom,"afterEnd",c.tmpl("calendar",r));
l.oDom.onblur=function(){
if(!p._mbCalOver)
{
n();
}
};
g.S("qmcontact_cal",window).onblur=function(){
if(!p._mbCalOver)
{
n();
}
};
g.S("qmcontact_cal",window).onmouseover=function(){
p._mbCalOver=1;
this.focus();
};
g.S("qmcontact_cal",window).onmouseout=function(){
p._mbCalOver=0;
};
g.S("qmcontact_cal",window).onmousedown=function(s){
var y=s||event,x=g.getEventTarget(y),B=x.getAttribute("opt"),t=function(D){
var E=D+"";
return E.length>1?E:[0,E].join("");
};
if((x.tagName=="TD"||x.tagName=="A")&&B)
{
switch(B)
{case "choose":
var C=x.getAttribute("data-year"),A=x.getAttribute("data-month"),z=x.getAttribute("data-day");
l.oDom.value=q.replace("YYYY",C).replace("MM",t(A)).replace("DD",t(z));
n();
l.oDom.style.color="#000";
break;
case "slide":
var v=+x.getAttribute("data-range"),w=r.nYear,u=r.nMonth+v;
if(u>12)
{
w++;
u-=12;
}
else if(u<1)
{
w--;
u+=12;
}
o(g.extend(p._parseDate(l.sVal),{nYear:w,nMonth:u}),function(D){
m(D);
});
break;
}
}
};
};
o(this._parseDate(l.sVal),function(r){
m(r);
});
},"msg:COM_MAIL_HISTORY":function(l){
var m=l||{};
debug(m,2);
location.href=g.TE(["/cgi-bin/mail_list?sid=$sid$&s=searchcontact&matchtype=include&folderid=all","&view=$sViewType$&page=0&grpid=$sViewGroupId$&backaddrlist=","&version=2&AddrID=$sAddrId$&sender=$sEmail$&receiver=$sEmail$&name=$@$eval getTop().encodeURI($sName$)$@$"]).replace(g.extend({sid:g.getSid()},m));
},"msg:COM_COMPOSE":function(l){
var m=l||{},n=m.sDefAddrs||"";
g.openComposeDlg("normal",{sDefAddrs:n,bUinEncrypt:true,bAddrEdit:true,nWidth:490,sDefSubject:""});
},"msg:COM_COMM_MENU":function(l){
new (g.QMMenu)({oEmbedWin:window,oEmbedToDom:l.oDom.parentNode,sId:"contact_comm_list",nX:l.oDom.offsetLeft+1,nY:l.oDom.offsetTop+l.oDom.offsetHeight,nWidth:l.nWidth||194,oItems:l.oItems,nItemHeight:23,onitemclick:function(m){
l.fItemClick&&l.fItemClick(m);
}});
},"msg:COM_GROUP_LIST":function(l){
var m=[];
if(l.oGroupList.length)
{
for(var n=0;n<l.oGroupList.length;n++)
{
m.push({sId:l.oGroupList[n].sId,sItemValue:l.oGroupList[n].sName});
}
}
else{
m.push({bDisSelect:true,sItemValue:"\u65E0\u8054\u7CFB\u4EBA\u7EC4"});
}
if(l.bHasCreate)
{
m.push(i);
m.push({sId:"create",sItemValue:"\u65B0\u5EFA\u7EC4"});
}
new (g.QMMenu)({oEmbedWin:window,oEmbedToDom:l.oDom.parentNode,sId:"contact_group_list",nX:l.oDom.offsetLeft+1,nY:l.oDom.offsetTop+l.oDom.offsetHeight,nWidth:194,oItems:m,nItemHeight:23,onitemclick:function(o){
l.fItemClick&&l.fItemClick(o);
}});
},"msg:COM_VIEWTYPE_LIST":function(l){
var p=this,m=l.oGroup,n={},o=[{sId:"",bDisSelect:false,sItemValue:'<span class="groupmenu_item">\u8054\u7CFB\u4EBA</span>'}];
for(var q in m)
{
if(q=="oNormal")
{
o.push(i);
o.push({bDisSelect:true,sItemValue:['<a ck="list_create_group" href="javascript:;" class="btn_group_add btn_gray">','<em class="ico_column_add"></em>','</a>','<span class="groupmenu_title">\u8054\u7CFB\u4EBA\u5206\u7EC4</span>'].join("")});
}
else{
o.push(i);
o.push({bDisSelect:true,sItemValue:["<span class='groupmenu_title'>",q=="oDomain"?"\u57DF\u540D\u90AE\u7BB1":"QQ\u597D\u53CB","</span>"].join("")});
}
if(m[q].length)
{
for(var r=0;r<m[q].length;r++)
{
o.push({sId:m[q][r].sId,sItemValue:["<span class='groupmenu_item'>",m[q][r].sName,"</span>"].join("")});
n[m[q][r].sId]=m[q][r];
}
}
else{
o.push({bDisSelect:true,sItemValue:"<span class='groupmenu_item'>\u65E0</span>"});
}
}
new (g.QMMenu)({oEmbedWin:window,oEmbedToDom:l.oDom.parentNode,sId:"contact_viewtype_list",nX:l.oPos.x+1,nY:l.oPos.y,sStyle:"margin-left:1px;",nWidth:194,oItems:o,nItemHeight:23,onshow:function(){
g.addClass(l.oDom,"btn_gray_active");
},onclose:function(){
g.rmClass(l.oDom,"btn_gray_active");
},onitemclick:function(s){
location.href=g.urlReplacer({view:s?n[s].sSubType:"normal",groupid:s});
}});
},"msg:COM_GROUP_DEL":function(l){
var m=0;
g.confirmBox({sId:"delGroupConfirm",msg:['<div class="dialog_f_t">\u60A8\u786E\u5B9A\u8981\u5220\u9664\u6B64\u7EC4\u5417\uFF1F</div>','<div class="dialog_f_d"><input type="checkbox" id="alsoDel" class="cb" />\u540C\u65F6\u5220\u9664\u5206\u7EC4\u4E2D\u7684\u8054\u7CFB\u4EBA</div>'].join(""),width:450,onshow:function(){
m=g.QMDialog("GrpDetailEdit").option("nZIndex");
g.QMDialog("GrpDetailEdit").option("nZIndex",95);
},onreturn:function(n){
if(n)
{
g.QMAjax.send(g.T("/cgi-bin/laddr_del?sid=$sid$&operate=delgroup&GrpID=$groupid$&delmem=$delmem$&t=contact.json&ef=js").replace({sid:g.getSid(),delmem:this.S("alsoDel").checked?1:0,groupid:l}),{onload:function(o,p){
if(o)
{
var q=g.evalValue(p);
if(typeof (q.errcode)=="undefined")
{
g.showInfo("\u6210\u529F\u5220\u9664\u5206\u7EC4");
j.msg("msg:APP_HOME");
return;
}
else if(q.errmsg)
{
g.showError(q.errmsg);
return;
}
}
g.showError("\u5206\u7EC4\u5220\u9664\u5931\u8D25");
}});
setTimeout(function(){
g.QMDialog("GrpDetailEdit")&&g.QMDialog("GrpDetailEdit").close();
g.QMDialog("delGroupConfirm")&&g.QMDialog("delGroupConfirm").close();
},10);
}
else{
g.QMDialog("GrpDetailEdit").option("nZIndex",m);
return;
}
}});
},"msg:COM_GROUP_EDIT":function(l){
var n=l||{},o=n.sGroupId,m=n.oAddrs||[],p=o=="2100000001"?"\u7BA1\u7406\u91CD\u8981\u8054\u7CFB\u4EBA":"\u7BA1\u7406\u7EC4",q=g.TE(["/cgi-bin/laddr_grp_detail?sid=$sid$&version=2&t=contact_select&from=menu&grpid=$grouid$",'$@$for($addrs$)$@$','$@$endfor$@$']).replace({sid:g.getSid(),grouid:o,addrs:m});
new (g.QMDialog)({sId:"GrpDetailEdit",sTitle:!o?"\u65B0\u5EFA\u7EC4":p,sUrl:q,bAnimation:false,nWidth:516,nHeight:532});
},"msg:COM_IMPORT_QQ":function(l){
j.msg("msg:COM_IMPORT",g.extend({sType:"importQQ"},l));
},"msg:COM_IMPORT_MAIL":function(l){
j.msg("msg:COM_IMPORT",g.extend({sType:"importMailBox"},l));
},"msg:COM_IMPORT_FILE":function(l){
j.msg("msg:COM_IMPORT",g.extend({sType:"importFile"},l));
},"msg:COM_IMPORT":function(l){
var m=l||{},o=this,n=m.oGroupList||[];
g.useCom("QMImport",function(p){
p[m.sType](l);
});
},"msg:COM_EXPORT":function(l){
g.useCom("QMImport",function(m){
m.exportFile(l);
});
},"msg:COM_SYNC":function(){
new (g.QMDialog)({sId:"sync2mobile_linkman",sTitle:"\u5728\u624B\u673A\u4E2D\u540C\u6B65\u8054\u7CFB\u4EBA",sUrl:g.T("/cgi-bin/laddr_opr?sid=$sid$&action=liststatus&t=sync2mobile&s=linkman").replace({sid:g.getSid()}),bAnimation:false,nWidth:746,nHeight:532});
},"msg:COM_COMBINE":function(){
new (g.QMDialog)({sId:"combine_mailbox_dlg",sTitle:"\u5408\u5E76\u8054\u7CFB\u4EBA",sUrl:g.T("/cgi-bin/laddr_combine?sid=$sid$&method=advise&r=$r$&t=addr_combine_enter&version=2&type=$type$").replace({type:"all",sid:g.getSid(),r:Math.random()}),bAnimation:false,nWidth:467,nHeight:480});
},"msg:COM_FACE_UPLOAD":function(l){
var m=getTop();
g.useCom("QMAddrFace",function(n){
n({onreturn:function(o){
if(!o)
{
o="/zh_CN/htmledition/images/rss/male.gif";
g.attr(l,"data-empty","1");
}
else{
g.attr(l,"data-empty","0");
}
g.attr(l,"src",o);
},sImgUrl:g.attr(l,"data-empty")=="1"?"":g.attr(l,"src")});
});
}}});
},"Base");
})(QMContactAdaptor);
f.mgr=d;
f.view=c;
f.data=b;
f.load=function(g){
a.useCom(g);
};
f.msg=function(){
this.mgr.msg.apply(this.mgr,arguments);
};
f.route=function(h,g){
var k=h||"list",i=g||{},j=i.sDialogId;
this._detectScreen();
if(k!="edit_only")
{
this.mgr.use("Contact.List",{oContainer:a.S("list",window),oViewCenter:this.view,oDataCenter:this.data,oParam:i}).use("Contact.Search",{oContainer:a.S("search",window),oViewCenter:this.view,oDataCenter:this.data,oParam:i}).use("Contact.Group",{oContainer:a.S("group",window),oViewCenter:this.view,oDataCenter:this.data});
}
if(1||!j)
{
this.mgr.use("Contact.Bar",{oContainer:a.S("bar",window),oViewCenter:this.view,oDataCenter:this.data,oParam:i});
}
this.mgr.use("Contact.AddEdit",{oContainer:a.S("con",window),oViewCenter:this.view,oDataCenter:this.data,oParam:i}).use("Contact.Info",{oContainer:a.S("info",window),oDataCenter:this.data,oViewCenter:this.view,oParam:i}).use("Contact.Components");
switch(k)
{case "info":
this.mgr.cmd("Contact.Bar");
this.mgr.cmd("Contact.Info",{sId:i.sId,bIsPreview:true});
break;
case "edit_only":
case "edit":
this.mgr.cmd("Contact.Bar");
this.mgr.cmd("Contact.AddEdit",{sId:i.sId});
break;
case "search":
this.mgr.cmd("Contact.Bar");
this.mgr.cmd("Contact.Search",i);
this.data.get("level",{},function(){
});
break;
case "list":
this.mgr.cmd("Contact.Bar");
this.mgr.cmd("Contact.List");
this.data.get("level",{},function(){
});
break;
};
};
f._detectScreen=function(){
if(typeof (onpageresize)!="undefined")
{
onpageresize();
}
else{
if(document.body.clientWidth>1003)
{
!a.hasClass(document.body,"widescreen")&&a.addClass(document.body,"widescreen");
}
else{
a.hasClass(document.body,"widescreen")&&a.rmClass(document.body,"widescreen");
}
}
};
a.addEvent(document,"keydown",function(g){
var h=g.keyCode;
if(g.ctrlKey&&h==65)
{
f.msg("msg:APP_KEY/CTRL+A",g);
}
else if(h==27)
{
f.msg("msg:APP_KEY/ESC",g);
}
else if(h==38||h==40)
{
f.msg(h==38?"msg:APP_KEY/UP":"msg:APP_KEY/DOWN",g);
}
});
a.addEvent(document,"click",function(g){
f.msg("msg:APP_CLICK",a.getEventTarget(g));
});
a.addEvent(window,"scroll",function(g){
clearTimeout(window["_contact_scroll_timer_"]);
window["_contact_scroll_timer_"]=setTimeout(function(){
f.msg("msg:APP_SCROLL");
});
});
a.addEvent(window,"resize",function(g){
clearTimeout(window["_contact_resize_timer_"]);
window["_contact_resize_timer_"]=setTimeout(function(){
f._detectScreen();
f.msg("msg:APP_RESIZE");
});
});
window.onunload=function(){
f.mgr.clear();
f.mgr=f.view=f.data=e;
f=e;
};
return f;
})(QMContactAdaptor);
