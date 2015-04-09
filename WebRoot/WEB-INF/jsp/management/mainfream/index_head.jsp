<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>简单实用国产jQuery UI框架 - DWZ富客户端框架(J-UI.com)</title>

<link href="management/mainfream/themes/default/style.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="management/mainfream/themes/css/core.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="management/mainfream/themes/css/print.css" rel="stylesheet" type="text/css" media="print"/>
<link href="management/mainfream/uploadify/css/uploadify.css" rel="stylesheet" type="text/css" media="screen"/>
<!--[if IE]>
<link href="themes/css/ieHack.css" rel="stylesheet" type="text/css" media="screen"/>
<![endif]-->
<style type="text/css">
	#header{height:85px}
	#leftside, #container, #splitBar, #splitBarProxy{top:90px}
</style>

<!--[if lte IE 9]>
<script src="js/speedup.js" type="text/javascript"></script>
<![endif]-->
<script src="management/mainfream/js/jquery-1.7.2.min.js" type="text/javascript"></script>
<script src="management/mainfream/js/jquery.cookie.js" type="text/javascript"></script>
<script src="management/mainfream/js/jquery.validate.js" type="text/javascript"></script>
<script src="management/mainfream/js/jquery.bgiframe.js" type="text/javascript"></script>
<script src="management/mainfream/xheditor/xheditor-1.2.1.min.js" type="text/javascript"></script>
<script src="management/mainfream/xheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script>
<script src="management/mainfream/uploadify/scripts/jquery.uploadify.min.js" type="text/javascript"></script>

<script src="management/mainfream/bin/dwz.min.js" type="text/javascript"></script>
<script src="management/mainfream/js/dwz.regional.zh.js" type="text/javascript"></script>

<script type="text/javascript">
$(function(){
	DWZ.init("management/mainfream/dwz.frag.xml", {
		loginUrl:"login_dialog.html", loginTitle:"登录",	// 弹出登录对话框
//		loginUrl:"login.html",	// 跳到登录页面
		statusCode:{ok:200, error:300, timeout:301}, //【可选】
		keys: {statusCode:"statusCode", message:"message"}, //【可选】
		pageInfo:{pageNum:"pageNum", numPerPage:"numPerPage", orderField:"orderField", orderDirection:"orderDirection"}, //【可选】
		debug:false,	// 调试模式 【true|false】
		callback:function(){
			initEnv();
			$("#themeList").theme({themeBase:"themes"});
			setTimeout(function() {$("#sidebar .toggleCollapse div").trigger("click");}, 10);
		}
	});
});
</script>
</head>