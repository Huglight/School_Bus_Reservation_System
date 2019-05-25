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
<title>校车预约系统</title>
<style type="text/css">
body{
background:url('../${pageContext.request.contextPath }/images/bus.png') no-repeat;
background-size:cover;
width:100%;  
height:100%;  
background-size:100% 100%;  
position:absolute;  
}
.loginpanel{
position: absolute;
top: 50%;
left: 50%;
-webkit-transform: translate(-50%, -50%);
-moz-transform: translate(-50%, -50%);
-ms-transform: translate(-50%, -50%);
-o-transform: translate(-50%, -50%);
transform: translate(-50%, -50%);
width: 300px;
}
</style>
</head>
<body>

<script type="text/javascript">
if ('<%=request.getSession().getAttribute("user")%>' != 'null')
	window.location.href="<%=request.getContextPath()%>/index.jsp";	
if ('<%=request.getAttribute("msg")%>' != 'null')
	alert("<%=request.getAttribute("msg")%>")
</script>
<div class="container loginpanel" id="loginpanel">
	<form action="${pageContext.request.contextPath }/login" method="post">
		<div class="panel panel-default">
			<div class="panel-heading">请登录</div>
			<div class="panel-body">
				<div class="input-group">
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-user"></span>	
					</span>
					<input type="text" class="form-control" placeholder="请输入用户名" id="username" name="username">
				</div>
				<div class="input-group" style="margin-top: 5%" >
					<span class="input-group-addon">
						<span class="glyphicon glyphicon-eye-close"></span>
					</span>
					<input type="password" class="form-control" placeholder="请输入密码" id="password" name="password">
				</div>
				<button style="margin-top: 5%;width: 239px" type="submit" class="btn btn-default">
					<span class="glyphicon glyphicon-log-in"></span>
				登录
				</button>
			</div>
		</div>
	</form>
</div>



</body>
</html>