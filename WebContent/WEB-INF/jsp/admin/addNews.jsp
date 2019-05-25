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
<title>增加通知</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/admin/addNews" method="post">
  <div class="form-group" id="Title">
    <label for="title">通知标题</label>
    <input type="text" class="form-control" id="title" name="title">
  </div>
  <div class="form-group" id="Author">
    <label for="author">填写单位</label>
    <input type="text" class="form-control" id="author" name="author">
  </div>
  <div class="form-group" id="Institude">
    <label for="institude">填写学院</label>
    <input type="text" class="form-control" id="institude" name="institude">
  </div>
  <div class="form-group" id="Text">
    <label for="text">文章内容</label>
    <textarea class="form-control" id="text" name="text" rows="20"></textarea>
  </div>
  <input type="hidden" name="fillindate" id="fillindate">
  <button type="submit" class="btn btn-default" onclick="return checkRequire()">提交</button>
</form>
</body>
<script type="text/javascript">
$(document).ready(function(){
	var mydate = new Date();
	var year = mydate.getFullYear();
	var month = mydate.getMonth()+1;
	var day = mydate.getDate();
	var now = year+'-'+month+'-'+day;
	$("#fillindate").val(now);
})
function checkRequire() {
	if ($("#title").val() == "" || $("#title").val() == null) {
		alert("请填写标题！")
		$("#Title").attr("class", "form-group has-error");
		$("#title").focus();
		return false;
	}
	if ($("#author").val() == "" || $("#author").val() == null) {
		alert("请填写单位！")
		$("#Author").attr("class", "form-group has-error");
		$("#author").focus();
		return false;
	}
	if ($("#text").val() == "" || $("#text").val() == null) {
		alert("请填写文章内容！")
		$("#Text").attr("class", "form-group has-error");
		$("#text").focus();
		return false;
	}
	return true;
}
</script>
</html>