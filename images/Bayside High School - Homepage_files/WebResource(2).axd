var _days,_silverLightVersion,_flashReqMajorVer,_flashReqMinorVer,_flashReqRevision,_cookieName,_cookieData,_expires;function SetConfigurableValues(A,C,D,B,E){_days=A;_silverLightVersion=C;_flashReqMajorVer=D;_flashReqMinorVer=B;_flashReqRevision=E}function StartDetection(){_cookieName="Flash";var A=new Date();A.setTime(A.getTime()+_days*(24*60*60*1000));if(GetCookie(_cookieName)==null||GetCookie(_cookieName)==""){_cookieData=DetectFlashVer(_flashReqMajorVer,_flashReqMinorVer,_flashReqRevision);SetCookie(_cookieName,_cookieData)}_cookieName="SilverLight";if(GetCookie(_cookieName)==null||GetCookie(_cookieName)==""){_cookieData=SilverlightisInstalled(_silverLightVersion);SetCookie(_cookieName,_cookieData)}}function SetCookie(C,B,A){document.cookie=C+"="+B+(A?(";expires="+A.toGMTString()):"")}function GetCookie(A){var E=A+"=";var C=E.length;var D=document.cookie.length;var B=0;while(B<D){var F=B+C;if(document.cookie.substring(B,F)==E){return GetCookieVal(F)}B=document.cookie.indexOf(" ",B)+1;if(B==0){break}}return null}function GetCookieVal(A){var B=document.cookie.indexOf(";",A);if(B==-1){B=document.cookie.length}return document.cookie.substring(A,B)}function SilverlightisInstalled(M){if(M==undefined){M=null}var C=false;var D=null;try{var I=null;var B=false;if(window.ActiveXObject){try{I=new ActiveXObject("AgControl.AgControl");if(M==null){C=true}else{if(I.IsVersionSupported(M)){C=true}}I=null}catch(L){B=true}}else{B=true}if(B){var J=navigator.plugins["Silverlight Plug-In"];if(J){if(M==null){C=true}else{var E=J.description;if(E=="1.0.30226.2"){E="2.0.30226.2"}var F=E.split(".");while(F.length>3){F.pop()}while(F.length<4){F.push(0)}var G=M.split(".");while(G.length>4){G.pop()}var A;var H;var K=0;do{A=parseInt(G[K]);H=parseInt(F[K]);K++}while(K<G.length&&A==H);if(A<=H&&!isNaN(A)){C=true}}}}}catch(L){C=false}return C}var isIE=(navigator.appVersion.indexOf("MSIE")!=-1)?true:false;var isWin=(navigator.appVersion.toLowerCase().indexOf("win")!=-1)?true:false;var isOpera=(navigator.userAgent.indexOf("Opera")!=-1)?true:false;function ControlVersion(){var A;var B;var C;try{B=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7");A=B.GetVariable("$version")}catch(C){}if(!A){try{B=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6");A="WIN 6,0,21,0";B.AllowScriptAccess="always";A=B.GetVariable("$version")}catch(C){}}if(!A){try{B=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.3");A=B.GetVariable("$version")}catch(C){}}if(!A){try{B=new ActiveXObject("ShockwaveFlash.ShockwaveFlash.3");A="WIN 3,0,18,0"}catch(C){}}if(!A){try{B=new ActiveXObject("ShockwaveFlash.ShockwaveFlash");A="WIN 2,0,0,11"}catch(C){A=-1}}return A}function GetSwfVer(){var B=-1;if(navigator.plugins!=null&&navigator.plugins.length>0){if(navigator.plugins["Shockwave Flash 2.0"]||navigator.plugins["Shockwave Flash"]){var A=navigator.plugins["Shockwave Flash 2.0"]?" 2.0":"";var D=navigator.plugins["Shockwave Flash"+A].description;var H=D.split(" ");var F=H[2].split(".");var C=F[0];var E=F[1];var G=H[3];if(G==""){G=H[4]}if(G[0]=="d"){G=G.substring(1)}else{if(G[0]=="r"){G=G.substring(1);if(G.indexOf("d")>0){G=G.substring(0,G.indexOf("d"))}}}var B=C+"."+E+"."+G}}else{if(navigator.userAgent.toLowerCase().indexOf("webtv/2.6")!=-1){B=4}else{if(navigator.userAgent.toLowerCase().indexOf("webtv/2.5")!=-1){B=3}else{if(navigator.userAgent.toLowerCase().indexOf("webtv")!=-1){B=2}else{if(isIE&&isWin&&!isOpera){B=ControlVersion()}}}}}return B}function DetectFlashVer(C,A,F){versionStr=GetSwfVer();if(versionStr==-1){return false}else{if(versionStr!=0){if(isIE&&isWin&&!isOpera){tempArray=versionStr.split(" ");tempString=tempArray[1];versionArray=tempString.split(",")}else{versionArray=versionStr.split(".")}var B=versionArray[0];var D=versionArray[1];var E=versionArray[2];if(B>parseFloat(C)){return true}else{if(B==parseFloat(C)){if(D>parseFloat(A)){return true}else{if(D==parseFloat(A)){if(E>=parseFloat(F)){return true}}}}}return false}}}function AC_AddExtension(A,B){if(A.indexOf("?")!=-1){return A.replace(/\?/,B+"?")}else{return A+B}}function AC_Generateobj(A,E,B){var D="";if(isIE&&isWin&&!isOpera){D+="<object ";for(var C in A){D+=C+'="'+A[C]+'" '}for(var C in E){D+='><param name="'+C+'" value="'+E[C]+'" /> '}D+="></object>"}else{D+="<embed ";for(var C in B){D+=C+'="'+B[C]+'" '}D+="> </embed>"}document.write(D)}function AC_FL_RunContent(){var A=AC_GetArgs(arguments,".swf","movie","clsid:d27cdb6e-ae6d-11cf-96b8-444553540000","application/x-shockwave-flash");AC_Generateobj(A.objAttrs,A.params,A.embedAttrs)}function AC_GetArgs(E,H,B,G,C){var D=new Object();D.embedAttrs=new Object();D.params=new Object();D.objAttrs=new Object();for(var F=0;F<E.length;F=F+2){var A=E[F].toLowerCase();switch(A){case"classid":break;case"pluginspage":D.embedAttrs[E[F]]=E[F+1];break;case"src":case"movie":E[F+1]=AC_AddExtension(E[F+1],H);D.embedAttrs.src=E[F+1];D.params[B]=E[F+1];break;case"onafterupdate":case"onbeforeupdate":case"onblur":case"oncellchange":case"onclick":case"ondblClick":case"ondrag":case"ondragend":case"ondragenter":case"ondragleave":case"ondragover":case"ondrop":case"onfinish":case"onfocus":case"onhelp":case"onmousedown":case"onmouseup":case"onmouseover":case"onmousemove":case"onmouseout":case"onkeypress":case"onkeydown":case"onkeyup":case"onload":case"onlosecapture":case"onpropertychange":case"onreadystatechange":case"onrowsdelete":case"onrowenter":case"onrowexit":case"onrowsinserted":case"onstart":case"onscroll":case"onbeforeeditfocus":case"onactivate":case"onbeforedeactivate":case"ondeactivate":case"type":case"codebase":D.objAttrs[E[F]]=E[F+1];break;case"id":case"width":case"height":case"align":case"vspace":case"hspace":case"class":case"title":case"accesskey":case"name":case"tabindex":D.embedAttrs[E[F]]=D.objAttrs[E[F]]=E[F+1];break;default:D.embedAttrs[E[F]]=D.params[E[F]]=E[F+1]}}D.objAttrs.classid=G;if(C){D.embedAttrs.type=C}return D}if(!window.Silverlight){window.Silverlight={}}Silverlight._silverlightCount=0;Silverlight.__onSilverlightInstalledCalled=false;Silverlight.fwlinkRoot="http://go2.microsoft.com/fwlink/?LinkID=";Silverlight.__installationEventFired=false;Silverlight.onGetSilverlight=null;Silverlight.onSilverlightInstalled=function(){window.location.reload(false)};Silverlight.isInstalled=function(M){if(M==undefined){M=null}var C=false;var D=null;try{var I=null;var B=false;if(window.ActiveXObject){try{I=new ActiveXObject("AgControl.AgControl");if(M===null){C=true}else{if(I.IsVersionSupported(M)){C=true}}I=null}catch(L){B=true}}else{B=true}if(B){var J=navigator.plugins["Silverlight Plug-In"];if(J){if(M===null){C=true}else{var E=J.description;if(E==="1.0.30226.2"){E="2.0.30226.2"}var F=E.split(".");while(F.length>3){F.pop()}while(F.length<4){F.push(0)}var G=M.split(".");while(G.length>4){G.pop()}var A;var H;var K=0;do{A=parseInt(G[K]);H=parseInt(F[K]);K++}while(K<G.length&&A===H);if(A<=H&&!isNaN(A)){C=true}}}}}catch(L){C=false}return C};Silverlight.WaitForInstallCompletion=function(){if(!Silverlight.isBrowserRestartRequired&&Silverlight.onSilverlightInstalled){try{navigator.plugins.refresh()}catch(A){}if(Silverlight.isInstalled(null)&&!Silverlight.__onSilverlightInstalledCalled){Silverlight.onSilverlightInstalled();Silverlight.__onSilverlightInstalledCalled=true}else{setTimeout(Silverlight.WaitForInstallCompletion,3000)}}};Silverlight.__startup=function(){navigator.plugins.refresh();Silverlight.isBrowserRestartRequired=Silverlight.isInstalled(null);if(!Silverlight.isBrowserRestartRequired){Silverlight.WaitForInstallCompletion();if(!Silverlight.__installationEventFired){Silverlight.onInstallRequired();Silverlight.__installationEventFired=true}}else{if(window.navigator.mimeTypes){var C=navigator.mimeTypes["application/x-silverlight-2"];var D=navigator.mimeTypes["application/x-silverlight-2-b2"];var A=navigator.mimeTypes["application/x-silverlight-2-b1"];var B=A;if(D){B=D}if(!C&&(A||D)){if(!Silverlight.__installationEventFired){Silverlight.onUpgradeRequired();Silverlight.__installationEventFired=true}}else{if(C&&B){if(C.enabledPlugin&&B.enabledPlugin){if(C.enabledPlugin.description!=B.enabledPlugin.description){if(!Silverlight.__installationEventFired){Silverlight.onRestartRequired();Silverlight.__installationEventFired=true}}}}}}}if(!Silverlight.disableAutoStartup){if(window.removeEventListener){window.removeEventListener("load",Silverlight.__startup,false)}else{window.detachEvent("onload",Silverlight.__startup)}}};if(!Silverlight.disableAutoStartup){if(window.addEventListener){window.addEventListener("load",Silverlight.__startup,false)}else{window.attachEvent("onload",Silverlight.__startup)}}Silverlight.createObject=function(D,M,F,K,B,I,J){var C=new Object();var G=K;var A=B;C.version=G.version;G.source=D;C.alt=G.alt;if(I){G.initParams=I}if(G.isWindowless&&!G.windowless){G.windowless=G.isWindowless}if(G.framerate&&!G.maxFramerate){G.maxFramerate=G.framerate}if(F&&!G.id){G.id=F}delete G.ignoreBrowserVer;delete G.inplaceInstallPrompt;delete G.version;delete G.isWindowless;delete G.framerate;delete G.data;delete G.src;delete G.alt;if(Silverlight.isInstalled(C.version)){for(var E in A){if(A[E]){if(E=="onLoad"&&typeof A[E]=="function"&&A[E].length!=1){var L=A[E];A[E]=function(N){return L(document.getElementById(F),J,N)}}var H=Silverlight.__getHandlerName(A[E]);if(H!=null){G[E]=H;A[E]=null}else{throw"typeof events."+E+" must be 'function' or 'string'"}}}slPluginHTML=Silverlight.buildHTML(G)}else{slPluginHTML=Silverlight.buildPromptHTML(C)}if(M){M.innerHTML=slPluginHTML}else{return slPluginHTML}};Silverlight.buildHTML=function(C){var B=[];B.push('<object type="application/x-silverlight" data="data:application/x-silverlight,"');if(C.id!=null){B.push(' id="'+Silverlight.HtmlAttributeEncode(C.id)+'"')}if(C.width!=null){B.push(' width="'+C.width+'"')}if(C.height!=null){B.push(' height="'+C.height+'"')}B.push(" >");delete C.id;delete C.width;delete C.height;for(var A in C){if(C[A]){B.push('<param name="'+Silverlight.HtmlAttributeEncode(A)+'" value="'+Silverlight.HtmlAttributeEncode(C[A])+'" />')}}B.push("</object>");return B.join("")};Silverlight.createObjectEx=function(C){var B=C;var A=Silverlight.createObject(B.source,B.parentElement,B.id,B.properties,B.events,B.initParams,B.context);if(B.parentElement==null){return A}};Silverlight.buildPromptHTML=function(D){var C="";var B=Silverlight.fwlinkRoot;var A=D.version;if(D.alt){C=D.alt}else{if(!A){A=""}C="<a href='javascript:Silverlight.getSilverlight(\"{1}\");' style='text-decoration: none;'><img src='{2}' alt='Get Microsoft Silverlight' style='border-style: none'/></a>";C=C.replace("{1}",A);C=C.replace("{2}",B+"108181")}return C};Silverlight.getSilverlight=function(D){if(Silverlight.onGetSilverlight){Silverlight.onGetSilverlight()}var B="";var A=String(D).split(".");if(A.length>1){var E=parseInt(A[0]);if(isNaN(E)||E<2){B="1.0"}else{B=A[0]+"."+A[1]}}var C="";if(B.match(/^\d+\056\d+$/)){C="&v="+B}Silverlight.followFWLink("114576"+C)};Silverlight.followFWLink=function(A){top.location=Silverlight.fwlinkRoot+String(A)};Silverlight.HtmlAttributeEncode=function(A){var C;var B="";if(A==null){return null}for(var D=0;D<A.length;D++){C=A.charCodeAt(D);if(((C>96)&&(C<123))||((C>64)&&(C<91))||((C>43)&&(C<58)&&(C!=47))||(C==95)){B=B+String.fromCharCode(C)}else{B=B+"&#"+C+";"}}return B};Silverlight.default_error_handler=function(C,B){var D;var A=B.ErrorType;D=B.ErrorCode;var E="\nSilverlight error message     \n";E+="ErrorCode: "+D+"\n";E+="ErrorType: "+A+"       \n";E+="Message: "+B.ErrorMessage+"     \n";if(A=="ParserError"){E+="XamlFile: "+B.xamlFile+"     \n";E+="Line: "+B.lineNumber+"     \n";E+="Position: "+B.charPosition+"     \n"}else{if(A=="RuntimeError"){if(B.lineNumber!=0){E+="Line: "+B.lineNumber+"     \n";E+="Position: "+B.charPosition+"     \n"}E+="MethodName: "+B.methodName+"     \n"}}alert(E)};Silverlight.__cleanup=function(){for(var A=Silverlight._silverlightCount-1;A>=0;A--){window["__slEvent"+A]=null}Silverlight._silverlightCount=0;if(window.removeEventListener){window.removeEventListener("unload",Silverlight.__cleanup,false)}else{window.detachEvent("onunload",Silverlight.__cleanup)}};Silverlight.__getHandlerName=function(B){var A="";if(typeof B=="string"){A=B}else{if(typeof B=="function"){if(Silverlight._silverlightCount==0){if(window.addEventListener){window.addEventListener("onunload",Silverlight.__cleanup,false)}else{window.attachEvent("onunload",Silverlight.__cleanup)}}var C=Silverlight._silverlightCount++;A="__slEvent"+C;window[A]=B}else{A=null}}return A};Silverlight.onRequiredVersionAvailable=function(){};Silverlight.onRestartRequired=function(){};Silverlight.onUpgradeRequired=function(){};Silverlight.onInstallRequired=function(){};Silverlight.IsVersionAvailableOnError=function(A,D){var C=false;try{if(D.ErrorCode==8001&&!Silverlight.__installationEventFired){Silverlight.onUpgradeRequired();Silverlight.__installationEventFired=true}else{if(D.ErrorCode==8002&&!Silverlight.__installationEventFired){Silverlight.onRestartRequired();Silverlight.__installationEventFired=true}else{if(D.ErrorCode==5014||D.ErrorCode==2106){if(Silverlight.__verifySilverlight2UpgradeSuccess(D.getHost())){C=true}}else{C=true}}}}catch(B){}return C};Silverlight.IsVersionAvailableOnLoad=function(A){var C=false;try{if(Silverlight.__verifySilverlight2UpgradeSuccess(A.getHost())){C=true}}catch(B){}return C};Silverlight.__verifySilverlight2UpgradeSuccess=function(C){var A=false;var B="2.0.31005";var E=null;try{if(C.IsVersionSupported(B+".99")){E=Silverlight.onRequiredVersionAvailable;A=true}else{if(C.IsVersionSupported(B+".0")){E=Silverlight.onRestartRequired}else{E=Silverlight.onUpgradeRequired}}if(E&&!Silverlight.__installationEventFired){E();Silverlight.__installationEventFired=true}}catch(D){}return A};