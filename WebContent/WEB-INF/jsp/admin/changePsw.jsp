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
<title>修改密码</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/admin/changePassword" method="post">
<div id="legend">
	<legend class="caption">修改密码</legend>
</div>
<div id="Psw">
<div class="form-group">
    <label for="class">新密码</label>
    <input type="password" class="form-control" id="newPsw" name="newPsw" placeholder="请输入新密码">
</div>
<div class="form-group">
    <label for="class">确认密码</label>
    <input type="password" class="form-control" id="confirmPsw" name="confirmPsw" placeholder="请再次输入新密码">
</div>
</div>
<button type="submit" class="btn btn-info" onclick="return checkPsw()">提交</button>
</form>
<script type="text/javascript">
function checkPsw() {
	if ($("#confirmPsw").val() != $("#newPsw").val()) {
		alert("两次输入的密码不一致！")
		$("#Psw").attr("class", "form-group has-error");
		return false;
	}
	return true;
}
</script>
</body>
</html>