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
<title>帮助列表</title>
</head>
<body>
<div id="legend">
	<legend class="caption">帮助信息</legend>
</div>
<c:choose>
	<c:when test="${page.curList != null && fn:length(page.curList) > 0 }">
		<c:forEach items="${page.curList }" var="help">
			<div>
				<a href="${pageContext.request.contextPath }/message/findHelpById?id=${help.id}">${help.title }</a>
				<div style="float: right;">${help.fillindate }</div><hr>
			</div>
		</c:forEach>
	</c:when>
	<c:otherwise>
		<p>尚无帮助信息</p>
	</c:otherwise>
</c:choose>
<nav aria-label="分页">
  <ul class="pagination">
  <!-- 设置分页变量 -->
		<c:if test="${page.totalPage <= 10 }"> 	<!-- 防止页数比5小 -->
          	 <c:set var="begin" value="1" scope="page">
          	 </c:set> 
          	 <c:set var="end" value="${page.totalPage }" scope="page">
          	 </c:set>
          </c:if> 
          <c:if test="${page.totalPage > 5 }"> 
          <c:choose> 
          	 <c:when test="${page.thisPage <= 3 }"> <!-- 页数比3小，前两页不是中间页 -->
	          	 <c:set var="begin" value="1" scope="page"></c:set> 
	          	 <c:set var="end" value="5" scope="page"></c:set> 
          	 </c:when> 
          	 <c:when test="${page.thisPage >= page.totalPage - 2 }"> <!-- 页数比最大页数小2，后两页不是中间页 -->
	          	 <c:set var="begin" value="${page.totalPage - 4 }" scope="page"></c:set> 
	          	 <c:set var="end" value="${page.totalPage }" scope="page"></c:set> 	
          	 </c:when>
				<c:otherwise> 	<!-- 其他中间页为当前页数 -->
					<c:set var="begin" value="${page.thisPage - 2 }" scope="page">	</c:set> 
					<c:set var="end" value="${page.thisPage + 2 }" scope="page"></c:set> 
				</c:otherwise> 
			</c:choose> 
			</c:if> 	
<li><a href="${pageContext.request.contextPath }/message/dispatcherHelpList?thispage=1">首页</a></li>
    <li>
      <a href="${pageContext.request.contextPath }/message/dispatcherHelpList?thispage=${page.prePage }" aria-label="上一页">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <c:forEach begin="${begin}" end="${end}" step="1" var="i">
		<c:if test="${i==page.thisPage}">	<!-- 当前页不是超链接 -->
		<li class="active"><a href="#">${i }</a></li>
		</c:if> 
		<c:if test="${i!=page.thisPage}">	<!-- 其他页是超链接 -->
			<li><a href="${pageContext.request.contextPath }/message/dispatcherHelpList?thispage=${i }">${i }</a></li>
		</c:if>
	</c:forEach> 
    <li>
      <a href="${pageContext.request.contextPath }/message/dispatcherHelpList?thispage=${page.nextPage }" aria-label="下一页">	
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
    <li><a href="${pageContext.request.contextPath }/message/dispatcherHelpList?thispage=${page.totalPage }">尾页</a></li>
    <li><p style="text-align: center;">共${page.totalPage }页</p></li>
  </ul>
</nav>
</body>
</html>