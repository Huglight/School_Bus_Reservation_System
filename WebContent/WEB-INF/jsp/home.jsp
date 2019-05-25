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
<title>首页</title>
</head>
<body>
	<h1>运输服务中心简介</h1>
	<p> &emsp;运输服务中心成立于2006年4月，主要承担着学校南北校区教职工上下班全天候的班车保障任务。工作中贯彻以“安全、正点、优质服务”为主要管理目标，通勤部员工牢固地树立为教学服务，为全校师生员工服务的思想。中心还承担着学校教学、科研、外事、旅游、后勤生活服务以及离退休干部、职工医疗、生活等方面的运输任务。引进了文宏车辆维修部、大学生驾驶技能培训服务、并代办车辆驾照落户、审验、车辆保险与养路费代缴等服务。</p>
   	<p>&emsp;中心现有50座金龙6辆，46座金龙2辆，35座金龙1辆，7座别克商务3辆，11座金杯1辆，20座考斯特1辆，5座帕萨特2辆，5座大众朗逸1辆，完成每个工作日2500余教职工乘车全年万余车次行驶任务。</p>

   	<p>&emsp;中心员工都具有良好的服务意识和过硬的业务水平。我们将以诚信面对全校师生员工，以优质的服务面向社会所有的用户。</p>

   	<p>&emsp;运输服务中心全体员工警言：我们微小的疏忽可能给您和家人带来很大的麻烦。我们微小的失误，可能给集体带来很大的损失。所有个人的私欲、失德、失信，都将给我们的集体带来耻辱。</p>

   	<p>&emsp;调度室电话： 029-88202789</p>
 	<p>&emsp;一站式服务中心（24小时投诉电话）：88201000</p>
</body>
</html>