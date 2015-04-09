<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="/WEB-INF/tld/c.tld"%>
<%@ taglib prefix="fmt" uri="/WEB-INF/tld/fmt.tld" %>
<%@ taglib prefix="fn" uri="/WEB-INF/tld/fn.tld"%>

<form id="pagerForm" method="post" action="lvBannerMngAction!list.action?json.navTabId=${json.navTabId}" >
	<input type="hidden" name="keywords" value="${keywords}" />
	<input type="hidden" name="page.pageNum" value="${page.pageNum}" />
	<input type="hidden" name="page.numPerPage" value="${page.numPerPage}" />
	<input type="hidden" name="orderField" value="${orderField}" />
	<input type="hidden" name="orderDirection" value="${orderDirection}" />
	
</form>

<div class="page">
	<div class="pageHeader">
		<form onsubmit="return navTabSearch(this);" action="lvBannerMngAction!list.action?json.navTabId=${json.navTabId}" method="post" rel="pagerForm">
		<div class="searchBar">
			<table class="searchContent" layoutH="850">
				<tr>
						</tr><tr>
						<td><label>标题</label></td><td><input name="lvBanner.title" type="text" size="20" value="${lvBanner.title}"/></td>
						</tr><tr>
				</tr>
			</table>
			<div class="subBar">
				<ul>
					<li><div class="buttonActive"><div class="buttonContent"><button type="submit">检索</button></div></div></li>
				</ul>
			</div>
		</div>
		</form>
	</div>
	<div class="pageContent">
		<div class="panelBar">
			<ul class="toolBar">
				<li><a class="add" href="lvBannerMngAction!befSave.action?json.navTabId=${json.navTabId}" target="dialog" navTabId="lvBanner" rel="lvBanner" width="950" height="500" mask="true"><span>添加</span></a></li>
				<li class="line">line</li>
				<li><a class="delete" href="lvBannerMngAction!delList.action?json.navTabId=${json.navTabId}" target="selectedTodo" title="确实要删除这些记录吗?"><span>批量删除</span></a></li>
			</ul>
		</div>
		<table class="table" width="100%" layoutH="170">
			<thead>
				<tr>
					<th width="22"><input type="checkbox" group="ids" class="checkboxCtrl"></th>
						<!-- 生成表单 -->
							<th width="5%">序号</th>
							<th width="20%">banner位置</th>
							<th width="35%">标题</th>
							<th width="5%">排序值</th>
							<th width="15%">创建时间</th>
							<th width="15%">修改时间</th>
					        <th width="15%">操作</th>
				</tr>
			</thead>
			<tbody>
				<s:iterator value="page.list" status="stat" id="item">
					<td><input name="ids" value="${item.id}" type="checkbox"></td>
					<!-- 生成表单 -->
								<td>${stat.count }</td>
								<td>
								<c:if test="${item.bannerKey=='BANNER_LOCATION_TOP'}">导航页面位置</c:if>
								<c:if test="${item.bannerKey=='BANNER_LOCATION_DOWN'}">店铺/活动显示位置</c:if>
								</td>
								<td>
								<s:if test="%{null!=#item.title&&#item.title.length()>40}">
                           <s:property value="%{#item.title.substring(0, 40)}" />
                           ……
                          </s:if>
                          <s:else><s:property value="#item.title"/></s:else>
								</td>
								<td>${item.orderValue }</td>
							    <td><s:date name="createTime" format="yyyy-MM-dd HH:mm"/></td>
								<td><s:date name="modifyTime" format="yyyy-MM-dd HH:mm"/></td>
					<td>
						<a class="btnDel" href="lvBannerMngAction!del.action?lvBanner.id=${item.id}&json.navTabId=${json.navTabId}" target="ajaxTodo" title="删除">删除</a>
						<a class="btnEdit" href="lvBannerMngAction!befEdit.action?lvBanner.id=${item.id}&json.navTabId=${json.navTabId}" target="dialog" navTabId="lvBanner" rel="lvBanner" title="编辑" width="950" height="500" mask="true">编辑</a>
					</td>
				</tr>
				</s:iterator>
				
			</tbody>
		</table>
		<%@ include file="../common/panelBar.jsp"%>
	</div>
</div>