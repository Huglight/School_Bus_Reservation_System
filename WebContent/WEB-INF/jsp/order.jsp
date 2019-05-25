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
<title>提交订单</title>
</head>
<body>
<form>
<div id="legend">
	<legend class="caption">提交订单</legend>
</div>
  <div class="form-group">
    <label for="name">姓名</label>
    <input type="text" class="form-control" id="name" name="name" placeholder="请填写您的真实姓名">
  </div>
  <div class="form-group">
    <label for="class">单位/班级</label>
    <input type="text" class="form-control" id="class" name="class" placeholder="“学院+班级/单位”形式">
  </div>
  <div class="form-group">
    <label for="phone">联系方式</label>
    <input type="text" class="form-control" id="phone" name="phone" placeholder="请填写您的手机号码">
  </div>
  <div class="form-group">
    <label for="email">邮箱</label>
    <input type="text" class="form-control" id="email" name="email" placeholder="请填写您的电子邮箱">
  </div>
  <div class="form-group">
    <label for="date">用车日期</label>
    <input type="text" class="form-control" id="date" name="date" placeholder="请填写用车日期">
  </div>
  <div class="form-group">
    <label for="length">用车时长</label>
    <input type="text" class="form-control" id="length" name="length" placeholder="请填写用车时长">
  </div>
  <div class="form-group">
    <label for="route">路线</label>
    <input type="text" class="form-control" id="route" name="route" placeholder="请填写用车路线">
  </div>
  <div class="form-group">
    <label for="number">乘车人数</label>
    <input type="text" class="form-control" id="number" name="number" placeholder="请填写乘车人数">
  </div>
  <div class="form-group">
    <label for="other">其他要求</label>
    <textarea class="form-control" id="other" name="other"></textarea>
  </div>
  <button type="submit" class="btn btn-info">提交</button>
</form>
</body>
</html>