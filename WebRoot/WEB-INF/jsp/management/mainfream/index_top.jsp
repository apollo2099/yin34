<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="/WEB-INF/tld/c.tld"%>
<%@ taglib prefix="fmt" uri="/WEB-INF/tld/fmt.tld" %>
<%@ taglib prefix="fn" uri="/WEB-INF/tld/fn.tld"%>
<div class="headerNav">
				<a class="logo" href="http://j-ui.com">标志</a>
				<ul class="nav">
					<li id="switchEnvBox"><a href="javascript:">（<span>北京</span>）切换城市</a>
						<ul>
							<li><a href="sidebar_1.html">北京</a></li>
							<li><a href="sidebar_2.html">上海</a></li>
							<li><a href="sidebar_2.html">南京</a></li>
							<li><a href="sidebar_2.html">深圳</a></li>
							<li><a href="sidebar_2.html">广州</a></li>
							<li><a href="sidebar_2.html">天津</a></li>
							<li><a href="sidebar_2.html">杭州</a></li>
						</ul>
					</li>
					<li><a href="https://me.alipay.com/dwzteam" target="_blank">捐赠</a></li>
					<li><a href="changepwd.html" target="dialog" width="600">设置</a></li>
					<li><a href="http://www.cnblogs.com/dwzjs" target="_blank">博客</a></li>
					<li><a href="http://weibo.com/dwzui" target="_blank">微博</a></li>
					<li><a href="http://bbs.dwzjs.com" target="_blank">论坛</a></li>
					<li><a href="login.html">退出</a></li>
				</ul>
				<ul class="themeList" id="themeList">
					<li theme="default"><div class="selected">蓝色</div></li>
					<li theme="green"><div>绿色</div></li>
					<!--<li theme="red"><div>红色</div></li>-->
					<li theme="purple"><div>紫色</div></li>
					<li theme="silver"><div>银色</div></li>
					<li theme="azure"><div>天蓝</div></li>
				</ul>
			</div>
		
			<div id="navMenu">
				<ul>
					<li class="selected"><a href="sidebar_1.html"><span>资讯管理</span></a></li>
					<li><a href="sidebar_2.html"><span>订单管理</span></a></li>
					<li><a href="sidebar_1.html"><span>产品管理</span></a></li>
					<li><a href="sidebar_2.html"><span>会员管理</span></a></li>
					<li><a href="sidebar_1.html"><span>服务管理</span></a></li>
					<li><a href="sidebar_2.html"><span>系统设置</span></a></li>
				</ul>
			</div>


<script type="text/javascript">
//更新缓存，生成静态化页面
function inithtml(){
$("#inithtml").attr("disabled","disabled");
$("#inithtml").attr("href","#");
$.ajax({
		  type: "POST",
		  url: "/manager/cache/init!inithtml.action",
		  data: "",
		  dataType:"json",
		  success: function(data){
		      $.msgWin.showMsg('<div></br></br><p><h1>更新缓存,请稍后! </h1></p></br> <p><h1></h1></p><div>'); 
			  setTimeout(function(){$("#msg").animate({right:5,bottom:-250},1000);}, 5500);
			  setTimeout(function(){$("#msg").hide();}, 6500);
		  }
	});

}
//初始化索引
function initIndex(){
   $("#initIndex").attr("disabled","disabled");
   $("#initIndex").attr("href","#");
   $.ajax({
		  type: "POST",
		  url: "/manager/cache/initIndex!initIndex.action",
		  data: "",
		  dataType:"json",
		  success: function(data){
		      $.msgWin.showMsg('<div></br></br><p><h1>初始化索引,请稍后! </h1></p></br> <p><h1></h1></p><div>'); 
			  setTimeout(function(){$("#msg").animate({right:5,bottom:-250},1000);}, 5500);
			  setTimeout(function(){$("#msg").hide();}, 6500);
		  }
	});
}
//同步资源文件
function synResource(){
	   $("#synResource").attr("disabled","disabled");
	   $("#synResource").attr("href","#");
	   $.ajax({
			  type: "POST",
			  url: "/manager/cache/initIndex!synResource.action",
			  data: "",
			  dataType:"json",
			  success: function(data){
			      $.msgWin.showMsg('<div></br></br><p><h1>同步资源文件,请稍后! </h1></p></br> <p><h1></h1></p><div>'); 
				  setTimeout(function(){$("#msg").animate({right:5,bottom:-250},1000);}, 5500);
				  setTimeout(function(){$("#msg").hide();}, 6500);
			  }
		});
	}
</script>