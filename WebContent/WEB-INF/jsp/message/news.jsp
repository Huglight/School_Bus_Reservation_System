<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 引入bootstrap -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
	<!-- 引入JQuery  bootstrap.js-->
	<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<%-- <script src="${pageContext.request.contextPath }/js/vue.js"></script>
	<script src="${pageContext.request.contextPath }/js/vue-router.js"></script> --%>
<title>通知页面</title>
</head>
<body>
<h1 style="text-align: center;">${news.title }</h1>
<c:if test="${admin!=null }">
<div style="float: left;">
	<a href="${pageContext.request.contextPath }/admin/dispatcherEditNews?id=${news.id}" style="color: #337ab7;">编辑</a>&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath }/admin/deleteMsgById?id=${news.id}" style="color: #d9534f;" onclick="return confirm('确认删除？')">删除</a>
</div>
</c:if>
<br>
<div style="width: 100%;word-wrap:break-word;text-align: center;">
	${news.text }
</div>
<br>
<div style="float: right;">
	<p>${news.author }</p>
	<p>${news.institute }</p>
	<p>${news.fillindate }</p>
</div>
</body>
</html>