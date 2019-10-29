<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="head" style="text-align: center; width: 300px">
		<c:if test="${empty username}">
			<a href="/chapter7-4/JSTLCore">您好，请先登录</a>&nbsp;&nbsp;&nbsp;<a
				href="#">免费注册</a>
		</c:if>
		<c:if test="${!empty username}">
			${username}&nbsp;先生/女士，您好&nbsp;<a href="/chapter7-4/JSTLCore.jsp">退出</a>
		</c:if>
	</div>
	<br>
	<div id="contents">
		<c:choose>
			<c:when test="${!empty orders}">
				<table border="1">
					<thead>
						<tr>
							<th>ID</th>
							<th>订单编号</th>
							<th>邮寄地址</th>
							<th>联系电话</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${orders}" var="order" varStatus="s">
							<tr>
								<td>${s.count}</td>
								<td>${order.id}</td>
								<td>${order.address}</td>
								<td>${order.phone}</td>
								<td><a href="#">修改</a> <a href="#">删除</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</c:when>
			<c:otherwise>
			<div style="text-align: center; width: 300px">
				<c:out value="${orders}">
					查询订单orders集合为空！
				</c:out>
			</div>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>