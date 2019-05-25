<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="com.schoolbus.pojo.Login"%>
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
<title>用户信息</title>
</head>
<body>
<div id="legend">
	<legend class="caption">用户信息</legend>
</div>
<form action="${pageContext.request.contextPath }/user/changeInformation" method="post">
<table class="table table-striped">
<tr>
	<td width="25%">昵称</td>
	<td id="nickname1">${user.nickname }</td>
	<td id="nickname2" style="display: none"><input value="${user.nickname }" type="text" name="nickname" class="form-control"></td>
</tr>
<tr>
	<td width="25%">性别</td>
	<td id="sex1">${user.sex }</td>
	<td id="sex2" style="display: none">
	<select id="sex" name="sex" class="form-control" style="width: 25%">
		<option>男</option>
		<option>女</option>
		<option>双性人</option>
	</select>
	</td>
</tr>
<tr>
	<td width="25%">真实姓名</td>
	<td id="realname1">${user.realname }</td>
	<td id="realname2" style="display: none"><input value="${user.realname }" type="text" name="realname" class="form-control"></td>
</tr>
<tr>
	<td width="25%">邮箱</td>
	<td id="email1">${user.email }</td>
	<td id="email2" style="display: none"><input value="${user.email }" type="text" name="email" class="form-control"></td>
</tr>
<tr>
	<td width="25%">手机号</td>
	<td id="phone1">${user.phone }</td>
	<td id="phone2" style="display: none"><input value="${user.phone }" type="text" name="phone" class="form-control"></td>
</tr>
<tr>
	<td width="25%">QQ号</td>
	<td id="qq1">${user.qq }</td>
	<td id="qq2" style="display: none"><input value="${user.qq }" type="text" name="qq" class="form-control"></td>
</tr>
<tr>
	<td width="25%">备注</td>
	<td id="remark1">${user.remark }</td>
	<td id="remark2" style="display: none"><textarea name="remark" class="form-control">${user.remark }</textarea></td>
</tr>
</table>
<button type="button" class="btn btn-info" id="edit" onclick="editInformation()">编辑信息</button>
<button type="submit" style="display: none" id="save" class="btn btn-info">保存</button>
</form>
</body>
<script type="text/javascript">
function editInformation() {
	$("#nickname1").css("display", "none");
	$("#nickname2").css("display", "block");
	$("#sex1").css("display", "none");
	$("#sex2").css("display", "block");
	$("#realname1").css("display", "none");
	$("#realname2").css("display", "block");
	$("#email1").css("display", "none");
	$("#email2").css("display", "block");
	$("#phone1").css("display", "none");
	$("#phone2").css("display", "block");
	$("#qq1").css("display", "none");
	$("#qq2").css("display", "block");
	$("#remark1").css("display", "none");
	$("#remark2").css("display", "block");
	$("#edit").css("display", "none");
	$("#save").css("display", "block");
	var mainheight = $("body").height()+100;	//iframe自适应高度
	$("#body_iframe",parent.document).css("height",mainheight);
}
$(document).ready(function(){
	$("#sex").val("${user.sex}");
})
</script>
</html>