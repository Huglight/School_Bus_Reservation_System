<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 引入bootstrap -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
	<!-- 引入JQuery  bootstrap.js-->
	<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js" charset="utf-8"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<title>快速注册</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/register" method="post">
<div id="legend">
	<legend class="caption">快速注册</legend>
</div>
<div class="form-group">
    <label for="class">用户名</label>
    <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户名">
</div>
<div id="Psw">
<div class="form-group">
    <label for="class">密码</label>
    <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
</div>
<div class="form-group">
    <label for="class">确认密码</label>
    <input type="password" class="form-control" id="confirmPsw" name="confirmPsw" placeholder="请再次输入密码">
</div>
</div>
<button type="submit" class="btn btn-info" onclick="return checkPsw()">注册</button>
</form>
</body>
<script type="text/javascript">
function checkPsw() {
	if ($("#confirmPsw").val() != $("#password").val()) {
		alert("两次输入的密码不一致！")
		$("#Psw").attr("class", "form-group has-error");
		return false;
	}
	return true;
}
</script>
</html>