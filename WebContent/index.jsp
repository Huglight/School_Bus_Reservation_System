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
<title>校车预约系统</title>
<style type="text/css">
.footer{
height: 50px;
margin-top: -50px;
}
.left{
margin-top: 8%;
}
.right{
margin-top: 8%;
}
</style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="navbar-header">
      <a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">
      		校车预约系统
      	</a>
    </div>
<div class="container">
		<div class="collapse navbar-collapse">
		<ul class="nav navbar-nav navbar-right">
		<c:choose>
		<c:when test="${admin==null }"><!-- 普通用户登录 -->
			<li><a href="${pageContext.request.contextPath }/index.jsp">首页</a></li>
			<li><a href="${pageContext.request.contextPath }/order/dispatcherOrder" target="pbody">提交订单</a></li> 
			<li><a href="${pageContext.request.contextPath }/message/dispatcherSuggestion" target="pbody">提交建议</a></li>
	        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">查询班次<span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="${pageContext.request.contextPath }/message/dispatcherSchedule" target="pbody">教职工</a></li>
		            <li><a href="${pageContext.request.contextPath }/message/dispatcherSchedule" target="pbody">学生</a></li>
		          </ul>
		    </li> 
	        <c:choose>
	        <c:when test="${user==null}">
				<li><a href="${pageContext.request.contextPath }/dispatcherLogin">登录</a></li>
				<li><a href="${pageContext.request.contextPath }/dispatcherRegister" target="pbody">注册</a></li>
			</c:when>
			<c:when test="${user!=null}">
				<li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${user.userName }<span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="${pageContext.request.contextPath }/user/dispatcherInformation" target="pbody">用户信息</a></li>
		            <li><a href="${pageContext.request.contextPath }/user/dispatcherMyOrder" target="pbody">我的订单</a></li>
		            <li><a href="${pageContext.request.contextPath }/user/dispatcherChangePsw" target="pbody">修改密码</a></li>
		            <li role="separator" class="divider"></li> 
		            <li><a href="${pageContext.request.contextPath }/logout">退出登录</a></li>
		          </ul>
		        </li> 
			</c:when>
			</c:choose>
		</c:when>
		<c:when test="${admin!=null }">	<!-- 管理员登录 -->
			<li><a href="${pageContext.request.contextPath }/index.jsp">首页</a></li>
			<li><a href="${pageContext.request.contextPath }/admin/dispatcherNews" target="pbody">发布通知</a></li> 
			<li><a href="${pageContext.request.contextPath }/admin/dispatcherHelp" target="pbody">发布帮助</a></li>
			<li><a href="${pageContext.request.contextPath }/admin/dispatcherOrder" target="pbody">查看订单</a></li>
			<li><a href="${pageContext.request.contextPath }/admin/dispatcherSuggestion" target="pbody">查看建议</a></li>
	        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">修改班次<span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="${pageContext.request.contextPath }/admin/dispatcherSchedule" target="pbody">教职工</a></li>
		            <li><a href="${pageContext.request.contextPath }/admin/dispatcherSchedule" target="pbody">学生</a></li>
		          </ul>
		    </li> 
			<li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${admin.name }<span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="${pageContext.request.contextPath }/admin/dispatcherInformation" target="pbody">用户信息</a></li>
	            <li><a href="${pageContext.request.contextPath }/admin/dispatcherChangePsw" target="pbody">修改密码</a></li>
	            <li role="separator" class="divider"></li> 
	            <li><a href="${pageContext.request.contextPath }/admin/logout">退出登录</a></li>
	          </ul>
	        </li>
		</c:when>
		</c:choose>
      </ul>
		</div>
	</div>
</nav>
<div class="container">
	<div class="row">
		<div class="left col-md-8">
			<div class="p-body">
				<div class="embed-responsive embed-responsive-16by9" id="body_iframe">
	            	<iframe class="embed-responsive-item" src="<%=basePath %>dispatcherHome" name="pbody" id="pbody"></iframe>
	        	</div>
			</div>
		</div>
		<div class="right col-md-4">
			<div class="panel panel-default" style="height: 240px">
			<div class="panel-heading">
			通知公告
			<a href="${pageContext.request.contextPath }/message/dispatcherNewsList" style="float: right;" target="pbody">更多>></a>
			</div>
			  <div class="panel-body" id="newsList">
			  </div>
			</div>
			<div class="panel panel-default" style="height: 240px">
			<div class="panel-heading">
			帮助信息
			<a href="${pageContext.request.contextPath }/message/dispatcherHelpList" style="float: right;" target="pbody">更多>></a>
			</div>
			  <div class="panel-body" id="helpList">
			  </div>
			</div>
		</div>
	</div>
</div>
	<footer class="navbar-fixed-bottom">
	<div class="container">
		<p>©copyright 西安电子科技大学 2018&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/admin/dispatcherLogin">admin</a></p>
	</div>
	</footer>
</body> 
<script type="text/javascript">
$("#pbody").on('load',function(){
	var mainheight = $(this).contents().find("body").height()+100;	//iframe自适应高度
	$("#body_iframe").css("height",mainheight);
}); 
$(document).ready(function(){
	$.ajax({
		type:"POST",
		url:"${pageContext.request.contextPath }/getMessageList",
		datatype:"json",
		success:function(data){
			for (var i = 0; i < 7; i++) {
				if (data.newsList != null && data.newsList[i] != null) {	//通知公告
					var news = '<a href="${pageContext.request.contextPath }/message/findNewsById?id='+data.newsList[i].id+'" target="pbody">'+data.newsList[i].title+'</a><br>';
					$("#newsList").append(news);
				}
				if (data.helpList != null && data.helpList[i] != null) {	//帮助信息
					var help = '<a href="${pageContext.request.contextPath }/message/findHelpById?id='+data.helpList[i].id+'" target="pbody">'+data.helpList[i].title+'</a><br>';
					$("#helpList").append(help);
				}
			}
		}
	})
})
</script>
</html>